#!/bin/bash

dockerize -wait tcp://django-db:3306 -timeout 20s
echo "db connected"

python manage.py makemigrations
python manage.py migrate

python manage.py runserver 0.0.0.0:8000
