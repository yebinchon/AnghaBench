
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {scalar_t__ bbt; } ;
typedef int loff_t ;


 int nand_isbad_bbm (struct nand_chip*,int ) ;
 int nand_isbad_bbt (struct nand_chip*,int ,int) ;

__attribute__((used)) static int nand_block_checkbad(struct nand_chip *chip, loff_t ofs, int allowbbt)
{

 if (chip->bbt)
  return nand_isbad_bbt(chip, ofs, allowbbt);

 return nand_isbad_bbm(chip, ofs);
}
