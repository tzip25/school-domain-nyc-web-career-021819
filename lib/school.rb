require 'pry'
# code here!
class School

  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    if @roster[grade].nil?
      @roster[grade] = []
    end
    @roster[grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.map { |grade, name_arr| [grade, name_arr.sort] }.to_h
      # binding.pry
  end

end
