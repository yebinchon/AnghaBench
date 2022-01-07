
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct spi_nor {int addr_width; } ;





 int const SMPT_CMD_ADDRESS_LEN_MASK ;


__attribute__((used)) static u8 spi_nor_smpt_addr_width(const struct spi_nor *nor, const u32 settings)
{
 switch (settings & SMPT_CMD_ADDRESS_LEN_MASK) {
 case 131:
  return 0;
 case 130:
  return 3;
 case 129:
  return 4;
 case 128:

 default:
  return nor->addr_width;
 }
}
