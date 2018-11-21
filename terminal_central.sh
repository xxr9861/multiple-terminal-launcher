
terminal_prompt(){
 #!/bin/bash
 # hashing algorithm prompt
    PS3='Which kind of terminal would you like : '  #PS3 is a system variable, it means the prompt

    options=("xterm libmono 10" "xterm dejasans" "xterm ub mono 10" "xterm ub mono 12" "xterm ub mono 14" "" "xterm liberation" "xterm deja" "xterm fullscreen" "mrxvt" "rxvt" "retro-term" "Eterm fullscreen" "rxvt fullscreen" "quit" )

    select opt in "${options[@]}"
    do

	
     case $opt in
         "xterm libmono 10")

	     alias xterm1="xterm -fa 'Liberation Mono' -fs 10 -fg green -bg black"
	     
         ;;
	 "xterm dejasans")
	    xterm -fa "DejaVu Sans Mono" &
    ;;
	 "xterm ub mono 10")
	     xterm -fa "Ubuntu Mono" -fs 10 &
    ;;
	 "xterm ub mono 12")
	     xterm -fa "Ubuntu Mono" -fs 12 &
    ;;
	 "xterm ub mono 14")
	     xterm -fa "Ubuntu Mono" -fs 14 &
    ;;
	 "xterm liberation")
	     xterm -fa liberation &
    ;;
	 "xterm deja")
    ;;
	 "xterm fullscreen")

	     xterm -geometry 1920x1080
	         ;;
	 "mrxvt")
	     mrxvt &
	         ;;
	 "rxvt")
	     rxvt &
    ;;
	 "retro-term")

	     /home/majhi/githubrepo/cool-retro-term/cool-retro-term --fullscreen
    ;;
	 "Eterm fullscreen")

	     Eterm -cr red -g 1920x1080
	     ;;
	 "rxvt fullscreen")
	     rxvt -cr red -g 1920x1080
	     ;;
	 "quit")
	     break
	     ;;
	 *)
	     echo "Invalid option"
	     ;;
     esac
     
done

	     


}

terminal_prompt

