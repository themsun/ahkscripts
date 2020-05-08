^+v::
	Clipboard :=	RegExReplace(Clipboard,"`as)\v+$")	; remove extra newline at end
	; iterate through each clipboard entry
	Loop, parse, Clipboard, `n, `r
	{
		
		Send %A_LoopField%
		Sleep, 1000
		Send {Enter}
		Sleep, 200
	}
return