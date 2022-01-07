
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int* data; } ;
struct nand_chip {int options; TYPE_1__ id; int base; } ;


 int NAND_NEED_SCRAMBLING ;
 int nanddev_bits_per_cell (int *) ;

__attribute__((used)) static void hynix_nand_extract_scrambling_requirements(struct nand_chip *chip,
             bool valid_jedecid)
{
 u8 nand_tech;


 if (nanddev_bits_per_cell(&chip->base) > 2)
  chip->options |= NAND_NEED_SCRAMBLING;


 if (valid_jedecid) {
  nand_tech = chip->id.data[5] >> 4;


  if (nand_tech > 0)
   chip->options |= NAND_NEED_SCRAMBLING;
 } else {
  nand_tech = chip->id.data[5] & 0x7;


  if (nand_tech > 2)
   chip->options |= NAND_NEED_SCRAMBLING;
 }
}
