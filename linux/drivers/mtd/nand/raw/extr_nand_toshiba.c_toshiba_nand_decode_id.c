
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nand_memory_organization {int oobsize; int pagesize; } ;
struct TYPE_5__ {int step_size; int strength; } ;
struct TYPE_6__ {TYPE_2__ eccreq; } ;
struct TYPE_4__ {int len; int* data; } ;
struct nand_chip {TYPE_3__ base; TYPE_1__ id; } ;
struct mtd_info {int oobsize; } ;


 int WARN (int,char*) ;
 int nand_decode_ext_id (struct nand_chip*) ;
 scalar_t__ nand_is_slc (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 struct nand_memory_organization* nanddev_get_memorg (TYPE_3__*) ;

__attribute__((used)) static void toshiba_nand_decode_id(struct nand_chip *chip)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct nand_memory_organization *memorg;

 memorg = nanddev_get_memorg(&chip->base);

 nand_decode_ext_id(chip);
 if (chip->id.len >= 6 && nand_is_slc(chip) &&
     (chip->id.data[5] & 0x7) == 0x6 &&
     !(chip->id.data[4] & 0x80) ) {
  memorg->oobsize = 32 * memorg->pagesize >> 9;
  mtd->oobsize = memorg->oobsize;
 }
 if (chip->id.len >= 6 && nand_is_slc(chip)) {
  chip->base.eccreq.step_size = 512;
  switch (chip->id.data[5] & 0x7) {
  case 0x4:
   chip->base.eccreq.strength = 1;
   break;
  case 0x5:
   chip->base.eccreq.strength = 4;
   break;
  case 0x6:
   chip->base.eccreq.strength = 8;
   break;
  default:
   WARN(1, "Could not get ECC info");
   chip->base.eccreq.step_size = 0;
   break;
  }
 }
}
