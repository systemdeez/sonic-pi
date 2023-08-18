# For more sonicpi content, please smash that like button and subscribe
# First, higher notes are played, then lower notes, then played together
# Find this code on my github to play around with it! link.space/@systemdeez
# In this video, we will go through all the synths :) and see how they sound
# you can use these synths on a MIDI keyboard, shown in the first few mins
# My thoughts:
#
use_real_time
selected_synth = :zawa    # <- THIS IS THE SYNTH WE ARE TESTING
time = 0.3 # <- This is the speed of the notes in seconds


##|high_notes = [:C4,:D,:E,:F,:G,:A,:B,:C5] musical notation equivalent
high_notes = [60, 62, 64, 65, 67, 69, 71, 72]
high_notes.each do |note|
  sleep time
  synth selected_synth, note: note
end

##|low_notes = [:C2,:D2,:E2,:F2,:G2,:A2,:B2,:C3] musical notation equivalent
low_notes = [36, 38, 40, 41, 43, 45, 47, 48]
low_notes.each do |note|
  sleep time
  synth selected_synth, note: note
end

high_notes.zip(low_notes).each do |high_notes, low_notes|
  sleep time
  synth selected_synth, note: high_notes
  synth selected_synth, note: low_notes
end
sleep time
high_notes.zip(low_notes).each do |high_notes, low_notes|
  sleep 0.06
  synth selected_synth, note: high_notes
  synth selected_synth, note: low_notes
end
