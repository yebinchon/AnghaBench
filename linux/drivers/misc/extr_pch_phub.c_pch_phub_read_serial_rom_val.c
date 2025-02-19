
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pch_phub_reg {unsigned int pch_mac_start_address; } ;


 unsigned int* pch_phub_mac_offset ;
 int pch_phub_read_serial_rom (struct pch_phub_reg*,unsigned int,int *) ;

__attribute__((used)) static void pch_phub_read_serial_rom_val(struct pch_phub_reg *chip,
      unsigned int offset_address, u8 *data)
{
 unsigned int mem_addr;

 mem_addr = chip->pch_mac_start_address +
   pch_phub_mac_offset[offset_address];

 pch_phub_read_serial_rom(chip, mem_addr, data);
}
