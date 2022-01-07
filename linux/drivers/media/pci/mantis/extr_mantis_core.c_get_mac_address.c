
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mantis_pci {int* mac_address; } ;


 int MANTIS_ERROR ;
 int dprintk (int ,int ,int,char*,...) ;
 int read_eeprom_byte (struct mantis_pci*,int*,int) ;
 int verbose ;

__attribute__((used)) static int get_mac_address(struct mantis_pci *mantis)
{
 int err;

 mantis->mac_address[0] = 0x08;
 err = read_eeprom_byte(mantis, &mantis->mac_address[0], 6);
 if (err < 0) {
  dprintk(verbose, MANTIS_ERROR, 1, "Mantis EEPROM read error");

  return err;
 }
 dprintk(verbose, MANTIS_ERROR, 0,
  "    MAC Address=[%pM]\n", mantis->mac_address);

 return 0;
}
