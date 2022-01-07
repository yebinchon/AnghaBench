
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* block_bad ) (struct nand_chip*,int ) ;} ;
struct nand_chip {TYPE_1__ legacy; } ;
typedef int loff_t ;


 int nand_block_bad (struct nand_chip*,int ) ;
 int stub1 (struct nand_chip*,int ) ;

__attribute__((used)) static int nand_isbad_bbm(struct nand_chip *chip, loff_t ofs)
{
 if (chip->legacy.block_bad)
  return chip->legacy.block_bad(chip, ofs);

 return nand_block_bad(chip, ofs);
}
