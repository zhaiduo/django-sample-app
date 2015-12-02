#!/bin/bash

virtualenv venv --python=python2.7
. venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt

source venv/bin/activate
python ./djangotest/manage.py migrate
python ./djangotest/manage.py runserver

