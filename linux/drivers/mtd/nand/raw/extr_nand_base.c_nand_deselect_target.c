
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* select_chip ) (struct nand_chip*,int) ;} ;
struct nand_chip {int cur_cs; TYPE_1__ legacy; } ;


 int stub1 (struct nand_chip*,int) ;

void nand_deselect_target(struct nand_chip *chip)
{
 if (chip->legacy.select_chip)
  chip->legacy.select_chip(chip, -1);

 chip->cur_cs = -1;
}
