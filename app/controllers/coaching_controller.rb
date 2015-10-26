class CoachingController < ApplicationController
  def answer
    @query = params[:query]
    coach_answer(@query)
  end


  def ask
  end

   def coach_answer(your_message)
    if your_message == 'I am going to work right now!'
      @answer = ""
    elsif your_message.strip.end_with? "?"
       @answer = "Silly question, get dressed and go to work!"
    else
       @answer = "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
     @answer = "" if your_message.downcase == 'i am going to work right now!'

    intro = ""
    if your_message == your_message.upcase
      intro = "I can feel your motivation! "
    end

    classic_coach_message = coach_answer(your_message)
     @answer = intro + classic_coach_message
    end
end
