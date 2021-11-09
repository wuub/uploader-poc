FROM amazoncorretto:17
RUN yum install -y procps-ng
ADD HelloWorld.java .
ADD thread-dumper.sh .
RUN javac HelloWorld.java
EXPOSE 8080/tcp
CMD java HelloWorld