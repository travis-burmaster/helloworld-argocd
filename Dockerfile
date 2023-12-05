FROM python:3.12-slim

RUN mkdir /app
WORKDIR /app
COPY main.py .
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

#COPY . .
EXPOSE 5000
CMD ["python", "main.py"]
