
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * dev_ready; } ;
struct nand_chip {TYPE_2__ legacy; } ;
struct atmel_nand {int numcs; TYPE_3__* activecs; TYPE_3__* cs; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_6__ {TYPE_1__ rb; } ;


 scalar_t__ ATMEL_NAND_GPIO_RB ;
 int * atmel_nand_dev_ready ;
 struct atmel_nand* to_atmel_nand (struct nand_chip*) ;

__attribute__((used)) static void atmel_nand_select_chip(struct nand_chip *chip, int cs)
{
 struct atmel_nand *nand = to_atmel_nand(chip);

 if (cs < 0 || cs >= nand->numcs) {
  nand->activecs = ((void*)0);
  chip->legacy.dev_ready = ((void*)0);
  return;
 }

 nand->activecs = &nand->cs[cs];

 if (nand->activecs->rb.type == ATMEL_NAND_GPIO_RB)
  chip->legacy.dev_ready = atmel_nand_dev_ready;
}
