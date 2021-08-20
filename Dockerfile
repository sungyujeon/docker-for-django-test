FROM python:3

WORKDIR /app
ADD    ./requirements.txt   /app/
RUN    pip install -r requirements.txt

ADD    ./toss           /app/toss/
ADD    ./gunicorn       /app/gunicorn/
ADD    ./manage.py      /app/

CMD ["gunicorn", "djangosample.wsgi", "-c", "gunicorn/prod.py"]