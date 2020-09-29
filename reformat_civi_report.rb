#!/usr/bin/env ruby

header = ARGF.readline()

KEY = '""'
WEIGHT = '""'

header = "name,voter_identifier,voter_key,email,vote_weight"
puts header

while (! ARGF.eof?)
  line = ARGF.readline
  name,id,email = line.chomp.split(',',3)
  # better have, exactly, 2 commas!
  if email.match(/,/)
    raise "invalid input: #{line}"
  end
  puts "#{name},#{id},#{KEY},#{email},#{WEIGHT}"
end
