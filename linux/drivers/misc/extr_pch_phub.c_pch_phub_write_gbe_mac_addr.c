
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pch_phub_reg {int ioh_type; } ;


 int ETH_ALEN ;
 int pch_phub_gbe_serial_rom_conf (struct pch_phub_reg*) ;
 int pch_phub_gbe_serial_rom_conf_mp (struct pch_phub_reg*) ;
 int pch_phub_write_serial_rom_val (struct pch_phub_reg*,int,int ) ;

__attribute__((used)) static int pch_phub_write_gbe_mac_addr(struct pch_phub_reg *chip, u8 *data)
{
 int retval;
 int i;

 if ((chip->ioh_type == 1) || (chip->ioh_type == 5))
  retval = pch_phub_gbe_serial_rom_conf(chip);
 else
  retval = pch_phub_gbe_serial_rom_conf_mp(chip);
 if (retval)
  return retval;

 for (i = 0; i < ETH_ALEN; i++) {
  retval = pch_phub_write_serial_rom_val(chip, i, data[i]);
  if (retval)
   return retval;
 }

 return retval;
}
