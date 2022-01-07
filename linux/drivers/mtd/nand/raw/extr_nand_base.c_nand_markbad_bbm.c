
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* block_markbad ) (struct nand_chip*,int ) ;} ;
struct nand_chip {TYPE_1__ legacy; } ;
typedef int loff_t ;


 int nand_default_block_markbad (struct nand_chip*,int ) ;
 int stub1 (struct nand_chip*,int ) ;

int nand_markbad_bbm(struct nand_chip *chip, loff_t ofs)
{
 if (chip->legacy.block_markbad)
  return chip->legacy.block_markbad(chip, ofs);

 return nand_default_block_markbad(chip, ofs);
}
