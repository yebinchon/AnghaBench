
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int block_markbad; } ;
struct nand_chip {int badblockpos; int badblockbits; TYPE_1__ legacy; } ;
struct mtd_info {scalar_t__ writesize; } ;


 int ENODEV ;
 scalar_t__ SM_SECTOR_SIZE ;
 scalar_t__ SM_SMALL_PAGE ;
 int mtd_set_ooblayout (struct mtd_info*,int *) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int oob_sm_ops ;
 int oob_sm_small_ops ;
 int sm_block_markbad ;

__attribute__((used)) static int sm_attach_chip(struct nand_chip *chip)
{
 struct mtd_info *mtd = nand_to_mtd(chip);


 chip->badblockpos = 0x05;
 chip->badblockbits = 7;
 chip->legacy.block_markbad = sm_block_markbad;


 if (mtd->writesize == SM_SECTOR_SIZE)
  mtd_set_ooblayout(mtd, &oob_sm_ops);
 else if (mtd->writesize == SM_SMALL_PAGE)
  mtd_set_ooblayout(mtd, &oob_sm_small_ops);
 else
  return -ENODEV;

 return 0;
}
