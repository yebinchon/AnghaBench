
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int options; int badblockpos; } ;
struct mtd_info {int writesize; } ;


 int NAND_BBM_POS_LARGE ;
 int NAND_BBM_POS_SMALL ;
 int NAND_BUSWIDTH_16 ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static void nand_decode_bbm_options(struct nand_chip *chip)
{
 struct mtd_info *mtd = nand_to_mtd(chip);


 if (mtd->writesize > 512 || (chip->options & NAND_BUSWIDTH_16))
  chip->badblockpos = NAND_BBM_POS_LARGE;
 else
  chip->badblockpos = NAND_BBM_POS_SMALL;
}
