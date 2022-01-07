
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nand_memory_organization {int pagesize; int pages_per_eraseblock; } ;
struct TYPE_2__ {int* data; } ;
struct nand_chip {TYPE_1__ id; int base; } ;
struct mtd_info {int erasesize; } ;


 int nand_decode_ext_id (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 struct nand_memory_organization* nanddev_get_memorg (int *) ;

__attribute__((used)) static void amd_nand_decode_id(struct nand_chip *chip)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct nand_memory_organization *memorg;

 memorg = nanddev_get_memorg(&chip->base);

 nand_decode_ext_id(chip);







 if (chip->id.data[4] != 0x00 && chip->id.data[5] == 0x00 &&
     chip->id.data[6] == 0x00 && chip->id.data[7] == 0x00 &&
     memorg->pagesize == 512) {
  memorg->pages_per_eraseblock = 256;
  memorg->pages_per_eraseblock <<= ((chip->id.data[3] & 0x03) << 1);
  mtd->erasesize = memorg->pages_per_eraseblock *
     memorg->pagesize;
 }
}
