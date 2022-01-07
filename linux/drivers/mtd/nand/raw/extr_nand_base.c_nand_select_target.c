
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* select_chip ) (struct nand_chip*,unsigned int) ;} ;
struct nand_chip {unsigned int cur_cs; TYPE_1__ legacy; int base; } ;


 scalar_t__ WARN_ON (int) ;
 unsigned int nanddev_ntargets (int *) ;
 int stub1 (struct nand_chip*,unsigned int) ;

void nand_select_target(struct nand_chip *chip, unsigned int cs)
{




 if (WARN_ON(cs > nanddev_ntargets(&chip->base)))
  return;

 chip->cur_cs = cs;

 if (chip->legacy.select_chip)
  chip->legacy.select_chip(chip, cs);
}
