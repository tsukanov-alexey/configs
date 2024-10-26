$Env:VIRTUAL_ENV_DISABLE_PROMPT = 1

oh-my-posh init pwsh --config "$env:LOCALAPPDATA\Programs\oh-my-posh\themes\kali-my-preset.omp.json" | Invoke-Expression

$env:CARAPACE_BRIDGES = 'zsh,fish,bash,inshellisense'
Set-PSReadLineOption -Colors @{ "Selection" = "`e[7m" }
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
carapace _carapace | Out-String | Invoke-Expression
