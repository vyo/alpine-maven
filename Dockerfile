#Dockerfile for Maven 3, based on the Alpine Linux image

FROM vyolin/java7

MAINTAINER Manuel Weidmann <weidmann.manuel@gmail.com>

RUN wget http://ftp.fau.de/apache/maven/maven-3/3.3.1/binaries/apache-maven-3.3.1-bin.tar.gz
RUN tar -zxvf apache-maven-3.3.1-bin.tar.gz
RUN rm apache-maven-3.3.1-bin.tar.gz
RUN mv apache-maven-3.3.1 /usr/lib/mvn

ENV JAVA_HOME /usr/lib/jvm/java-1.7-openjdk
ENV JAVA=$JAVA_HOME/bin
ENV M2_HOME=/usr/lib/mvn
ENV M2=$M2_HOME/bin
ENV PATH $PATH:$JAVA_HOME:$JAVA:$M2_HOME:$M2

CMD ["mvn --version"]
