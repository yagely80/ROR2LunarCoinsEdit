$userid = "enter_your_id_here"

$path = "C:\\Program Files (x86)\\Steam\\userdata\\" + $userid + "\\632360\\remote\\UserProfiles"
$filepath = $path+"\\"+(Get-ChildItem $path).Name

$content = Get-Content $filepath
$content = $content -replace "<coins>.*</coins>","<coins>1000000000</coins>"
Out-File -FilePath $filepath -InputObject $content