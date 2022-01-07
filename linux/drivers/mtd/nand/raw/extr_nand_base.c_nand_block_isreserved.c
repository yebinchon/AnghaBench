
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int bbt; } ;
struct mtd_info {int dummy; } ;
typedef int loff_t ;


 struct nand_chip* mtd_to_nand (struct mtd_info*) ;
 int nand_isreserved_bbt (struct nand_chip*,int ) ;

__attribute__((used)) static int nand_block_isreserved(struct mtd_info *mtd, loff_t ofs)
{
 struct nand_chip *chip = mtd_to_nand(mtd);

 if (!chip->bbt)
  return 0;

 return nand_isreserved_bbt(chip, ofs);
}
