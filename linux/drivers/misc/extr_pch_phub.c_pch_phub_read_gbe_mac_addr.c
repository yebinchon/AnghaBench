
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pch_phub_reg {int dummy; } ;


 int ETH_ALEN ;
 int pch_phub_read_serial_rom_val (struct pch_phub_reg*,int,int *) ;

__attribute__((used)) static void pch_phub_read_gbe_mac_addr(struct pch_phub_reg *chip, u8 *data)
{
 int i;
 for (i = 0; i < ETH_ALEN; i++)
  pch_phub_read_serial_rom_val(chip, i, &data[i]);
}
