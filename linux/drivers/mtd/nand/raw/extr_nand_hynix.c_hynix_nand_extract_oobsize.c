
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nand_memory_organization {int oobsize; int pagesize; } ;
struct TYPE_2__ {int* data; } ;
struct nand_chip {TYPE_1__ id; int base; } ;
struct mtd_info {int oobsize; } ;


 int SZ_8K ;
 int WARN (int,char*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 struct nand_memory_organization* nanddev_get_memorg (int *) ;

__attribute__((used)) static void hynix_nand_extract_oobsize(struct nand_chip *chip,
           bool valid_jedecid)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct nand_memory_organization *memorg;
 u8 oobsize;

 memorg = nanddev_get_memorg(&chip->base);

 oobsize = ((chip->id.data[3] >> 2) & 0x3) |
    ((chip->id.data[3] >> 4) & 0x4);

 if (valid_jedecid) {
  switch (oobsize) {
  case 0:
   memorg->oobsize = 2048;
   break;
  case 1:
   memorg->oobsize = 1664;
   break;
  case 2:
   memorg->oobsize = 1024;
   break;
  case 3:
   memorg->oobsize = 640;
   break;
  default:






   WARN(1, "Invalid OOB size");
   break;
  }
 } else {
  switch (oobsize) {
  case 0:
   memorg->oobsize = 128;
   break;
  case 1:
   memorg->oobsize = 224;
   break;
  case 2:
   memorg->oobsize = 448;
   break;
  case 3:
   memorg->oobsize = 64;
   break;
  case 4:
   memorg->oobsize = 32;
   break;
  case 5:
   memorg->oobsize = 16;
   break;
  case 6:
   memorg->oobsize = 640;
   break;
  default:






   WARN(1, "Invalid OOB size");
   break;
  }
  if (chip->id.data[1] == 0xde)
   memorg->oobsize *= memorg->pagesize / SZ_8K;
 }

 mtd->oobsize = memorg->oobsize;
}
