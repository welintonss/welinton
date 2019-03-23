#!/bin/bash
#####################################################
# Criador: Welinton                                 #
# Data da Criação : 12/01/2019                      #
# Discrição: ele serve pra configura o interfaces,  #
# dhcp, Samba                                       #
# Whatsapp: +55(82)981927707                        #
#####################################################

# Menu

echo "
 .##.....##.########.##....##.##.....##
 .###...###.##.......###...##.##.....##
 .####.####.##.......####..##.##.....##
 .##.###.##.######...##.##.##.##.....##
 .##.....##.##.......##..####.##.....##
 .##.....##.##.......##...###.##.....##
 .##.....##.########.##....##..#######.
echo "

echo " [1] configuração do interfaces	"
echo " [2] configuração do dhcp 	"
echo " [3] configuração do samba 	"
echo " [4] voltar 	"
read numero 

if [ "$numero" = "1" ]
then
clear

echo "
 ..######...#######..##....##.########.####..######...##.....##.########.....###.....######.....###.....#######.
 .##....##.##.....##.###...##.##........##..##....##..##.....##.##.....##...##.##...##....##...##.##...##.....##
 .##.......##.....##.####..##.##........##..##........##.....##.##.....##..##...##..##........##...##..##.....##
 .##.......##.....##.##.##.##.######....##..##...####.##.....##.########..##.....##.##.......##.....##.##.....##
 .##.......##.....##.##..####.##........##..##....##..##.....##.##...##...#########.##.......#########.##.....##
 .##....##.##.....##.##...###.##........##..##....##..##.....##.##....##..##.....##.##....##.##.....##.##.....##
 ..######...#######..##....##.##.......####..######....#######..##.....##.##.....##..######..##.....##..#######.

 .########...#######.
 .##.....##.##.....##
 .##.....##.##.....##
 .##.....##.##.....##
 .##.....##.##.....##
 .##.....##.##.....##
 .########...#######.

 .####.##....##.########.########.########..########....###.....######..########..######.
 ..##..###...##....##....##.......##.....##.##.........##.##...##....##.##.......##....##
 ..##..####..##....##....##.......##.....##.##........##...##..##.......##.......##......
 ..##..##.##.##....##....######...########..######...##.....##.##.......######....######.
 ..##..##..####....##....##.......##...##...##.......#########.##.......##.............##
 ..##..##...###....##....##.......##....##..##.......##.....##.##....##.##.......##....##
 .####.##....##....##....########.##.....##.##.......##.....##..######..########..######.
echo "

echo " [1] interfaces	"
echo " [2] voltar	"
read a
fi

if [ "$numero" = "2" ]
then
clear

echo "
 ..######...#######..##....##.########.####..######...##.....##.########.....###.....######.....###.....#######.
 .##....##.##.....##.###...##.##........##..##....##..##.....##.##.....##...##.##...##....##...##.##...##.....##
 .##.......##.....##.####..##.##........##..##........##.....##.##.....##..##...##..##........##...##..##.....##
 .##.......##.....##.##.##.##.######....##..##...####.##.....##.########..##.....##.##.......##.....##.##.....##
 .##.......##.....##.##..####.##........##..##....##..##.....##.##...##...#########.##.......#########.##.....##
 .##....##.##.....##.##...###.##........##..##....##..##.....##.##....##..##.....##.##....##.##.....##.##.....##
 ..######...#######..##....##.##.......####..######....#######..##.....##.##.....##..######..##.....##..#######.

 .########...#######.
 .##.....##.##.....##
 .##.....##.##.....##
 .##.....##.##.....##
 .##.....##.##.....##
 .##.....##.##.....##
 .########...#######.

 .########..##.....##..######..########.
 .##.....##.##.....##.##....##.##.....##
 .##.....##.##.....##.##.......##.....##
 .##.....##.#########.##.......########.
 .##.....##.##.....##.##.......##.......
 .##.....##.##.....##.##....##.##.......
 .########..##.....##..######..##.......
echo "

echo " [1] configurando INTERFACESv"
echo " [2] dhcp "
echo " [3] voltar	"
read b
fi

if [ "$numero" = "3" ]
then
clear

echo "
 ..######...#######..##....##.########.####..######...##.....##.########.....###.....######.....###.....#######.
 .##....##.##.....##.###...##.##........##..##....##..##.....##.##.....##...##.##...##....##...##.##...##.....##
 .##.......##.....##.####..##.##........##..##........##.....##.##.....##..##...##..##........##...##..##.....##
 .##.......##.....##.##.##.##.######....##..##...####.##.....##.########..##.....##.##.......##.....##.##.....##
 .##.......##.....##.##..####.##........##..##....##..##.....##.##...##...#########.##.......#########.##.....##
 .##....##.##.....##.##...###.##........##..##....##..##.....##.##....##..##.....##.##....##.##.....##.##.....##
 ..######...#######..##....##.##.......####..######....#######..##.....##.##.....##..######..##.....##..#######.

 .########...#######.
 .##.....##.##.....##
 .##.....##.##.....##
 .##.....##.##.....##
 .##.....##.##.....##
 .##.....##.##.....##
 .########...#######.

 ..######.....###....##.....##.########.....###...
 .##....##...##.##...###...###.##.....##...##.##..
 .##........##...##..####.####.##.....##..##...##.
 ..######..##.....##.##.###.##.########..##.....##
 .......##.#########.##.....##.##.....##.#########
 .##....##.##.....##.##.....##.##.....##.##.....##
 ..######..##.....##.##.....##.########..##.....##
echo "

echo " [1] pacotes do samba	"
echo " [2] configuracao do arquivo samba	"
echo " [3] criacao dos diretorio	"
echo " [4] permissao das pastas	"
echo " [5] criacao do script em bat	"
echo " [6] voltar	"
read c
fi

if [ "$numero" = "4" ]
then
exit
sleep 0.3
clear
fi

echo "
 ..######.....###....####.##....##.########...#######.
 .##....##...##.##....##..###...##.##.....##.##.....##
 .##........##...##...##..####..##.##.....##.##.....##
 ..######..##.....##..##..##.##.##.##.....##.##.....##
 .......##.#########..##..##..####.##.....##.##.....##
 .##....##.##.....##..##..##...###.##.....##.##.....##
 ..######..##.....##.####.##....##.########...#######.

echo"

if [ "$a" = "1" ]
then
echo " Configurando o interfaces "
sleep 0.3
cd /etc/network
mv interfaces interfaces_bkp
> interfaces
echo "source /etc/network/interfaces.d/*" >> interfaces
echo >> interfaces
echo "auto lo" >> interfaces
echo "iface lo inet loopback" >> interfaces
echo >> interfaces
echo "# WAN" >> interfaces
echo "allow-hotplug enp0s3" >> interfaces
echo "auto enp0s3" >> interfaces
echo "iface enp0s3 inet dhcp" >> interfaces
echo >> interfaces
echo "# LAN" >> interfaces
echo "allow-hotplug enp0s8" >> interfaces
echo "auto enp0s8" >> interfaces
echo "iface enp0s8 inet static" >> interfaces
echo >> interfaces
echo "address 192.168.0.1" >> interfaces
echo "netmask 255.255.255.0" >> interfaces
echo "network 192.168.0.0" >> interfaces
echo "broadcast 192.168.0 255" >> interfaces

ifup enp0s3 # vai restarta a primeira placa
ifup enp0s8 # vai restarta a segunda placa
echo "placa configurada"
cd && curso.sh
fi

if [ "$a" = "2" ]
then
echo "Voltando ..."
sleep 0.3
cd && sh curso.sh
fi

if [ "$b" = "1" ]
then
echo "configurando o INTERFACESv"
apt-get install isc-dhcp-server -y
cd /etc/default/
mv isc-dhcp-server isc-dhcp-server-bkp
> isc-dhcp-server
echo 'INTERFACESv4="enp0s8"'>> isc-dhcp-server
echo 'INTERFACESv6=""' >> isc-dhcp-server
service isc-dhcp-server restar
echo "configurado com sucesso"
cd && sh curso.sh
fi

if [ "$b" = "2" ]
then
echo " configurando o dhcp"
cd /etc/dhcp
mv dhcpd.conf dhcpd.conf.original
> dhcpd.conf
echo "# a linha abaixo permite alterações dinamicas de DNS" >> dhcpd.conf
echo "ddns-update-style none;" >> dhcpd.conf
echo "# a linha abaixo define o servidor de DNS a ser entregue aos hosts" >> dhcpd.conf
echo "option domain-name-servers 192.168.0.1;" >> dhcpd.conf
echo "# as linhas abaixo determinam o tempo de vida do IP" >> dhcpd.conf
echo "default-lease-time 600;" >> dhcpd.conf
echo "max-lease-time 7200;" >> dhcpd.conf
echo "# comentar a linha abaixo se este não for o principal servidor DHCP" >> dhcpd.conf
echo "authoritative;" >> dhcpd.conf
echo "# a linha abaixo cria os logs" >> dhcpd.conf
echo "log-facility local7;" >> dhcpd.conf
echo "# ESCOPO" >> dhcpd.conf
echo "subnet 192.168.0.0 netmask 255.255.255.0 {" >> dhcpd.conf
echo	"range 192.168.0.50 192.168.0.100;" >> dhcpd.conf
echo	"option routers 192.168.0.1;" >> dhcpd.conf
echo "}" >> dhcpd.conf
echo "configurado com sucesso.."
cd && sh curso.sh
fi

if [ "$b" = "3" ]
then
	echo "voltando..."
	sleep 0.3
	cd && sh curso.sh
fi

if [ "$c" = "1" ]
then
	echo "instalando pacote do samba.."
	apt-get install samba -y
echo "pacote instalado"
cd && sh curso.sh
fi

if [ "$c" = "2" ]
then
	echo "configuracao do arquivo samba"
	cd /etc/samba/
	mv smb.conf.original
	> smb.conf
echo	"[global]" >> smb.conf
echo "workgroup = SERVIDORTESTE " >> smb.conf
echo "netbios name = srvmc" >> smb.conf
echo "server string = SERVIDOR DE ARQUIVOS DO WT" >> smb.conf
echo >> smb.conf
 echo "# A linha adicionara as estacoes de trabalho no Samba automaticamente durante a ingresso delas no dominio" >> smb.conf
echo "add machine script = /usr/sbin/useradd -s /bin/false -d /var/lib/nobody %u" >> smb.conf
echo >> smb.conf
echo "domain master = yes" >> smb.conf
echo "preferred master = yes" >> smb.conf 
echo "local master = yes" >> smb.conf
echo "domain logons = yes" >> smb.conf
echo "logon script = netlogon.bat" >> smb.conf
echo "logon home = \\%N\profiles\%U" >> smb.conf
echo "logon path = \\%N\profiles\%U" >> smb.conf
echo >> smb.conf
echo "security = user" >> smb.conf
echo "encrypt passwords = true" >> smb.conf
echo "os level = 100" >> smb.conf
echo >> smb.conf
echo "[netlogon]" >> smb.conf
echo "path = /etc/samba/netlogon" >> smb.conf
echo "guest ok = yes" >> smb.conf
echo "browseable = no" >> smb.conf
echo >> smb.conf
echo "# pasta pública com dados - pode ficar em qualquer pasta diferente desta. em um HD diferente também." >> smb.conf
echo >> smb.conf
echo "[dados]" >> smb.conf
echo "path = /opt/dados" >> smb.conf
echo "guest ok = yes" >> smb.conf
echo "read = yes" >> smb.conf
echo "writeable = yes" >> smb.conf
echo "force directory mode = 777" >> smb.conf
echo >> smb.conf
echo "# home dos usuários" >> smb.conf
echo >> smb.conf
echo "valid users = %S" >> smb.conf
echo "guest ok = yes" >> smb.conf
echo "browseable = no" >> smb.conf 
echo "force directory mode = 777" >> smb.conf
echo >> smb.conf
echo "# as linhas abaixo fazem parte do perfil móvel" >> smb.conf
echo >> smb.conf
echo "[profiles]" >> smb.conf
echo "path = /home/profiles" >> smb.conf 
echo "writeable = Yes">> smb.conf
echo "browseable = No" >> smb.conf
echo "create mask = 0777" >> smb.conf
echo "directory mask = 0777" >> smb.conf
echo "profile acls = yes" >> smb.conf
echo "force directory mode = 777" >> smb.conf
echo "configuração completa"
cd && sh curso.sh
fi

if [ "$c" = "3" ]
then
	echo "criando os diretorios"
	mkdir -p /etc/skel/profile.pds
mkdir -p /etc/samba/netlogon
mkdir -p /opt/dados
mkdir -p /home/profiles
echo "diretorios criados"
cd && sh curso.sh
fi

if [ "$c" = "4" ]
	then
		echo "permissao dos diretorios"
chmod 777 /home/profiles # Todos podem ler, escrever e executar.
chmod 770 /etc/skel/profile.pds # Ninguém exceto o grupo pode ler.
chmod 755 /etc/samba/netlogon #Todos podem ler mas não escrever.
chmod 770 /opt/dados # Ninguém exceto o grupo pode ler.
cd && sh curso.sh
fi

if [ "$c" = "5" ]
then
	echo "criando script em bat"
	cd /etc/samba/netlogon/
	> netlogon.bat
	# mapeamento dos dados cliente
	echo "net use X: \\srvmc\dados /yes" >> netlogon.bat
	# criar senha usuário Root:
 smbpasswd -a root
# reinicie o servidor samba:
service smb restart && service nmb restart
# adicione o serviço na inicialização do sistema:
chkconfig smb on && chkconfig nmb on
cd && sh curso
fi

if [ "$c" = "6" ]
then 
 echo "voltando"
 sleep 
 cd && sh curso.sh
fi
