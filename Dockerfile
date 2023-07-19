FROM docker.io/openproject/community:12.5.8

COPY Gemfile.plugins /app/

RUN bundle config unset deployment && bundle install && bundle config set deployment 'true'
RUN ./docker/prod/setup/postinstall.sh
