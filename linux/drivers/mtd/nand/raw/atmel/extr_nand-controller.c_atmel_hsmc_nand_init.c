
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int select_chip; int cmd_ctrl; } ;
struct nand_chip {TYPE_1__ legacy; } ;
struct atmel_nand_controller {int dummy; } ;
struct atmel_nand {struct nand_chip base; } ;


 int atmel_hsmc_nand_cmd_ctrl ;
 int atmel_hsmc_nand_select_chip ;
 int atmel_nand_init (struct atmel_nand_controller*,struct atmel_nand*) ;

__attribute__((used)) static void atmel_hsmc_nand_init(struct atmel_nand_controller *nc,
     struct atmel_nand *nand)
{
 struct nand_chip *chip = &nand->base;

 atmel_nand_init(nc, nand);


 chip->legacy.cmd_ctrl = atmel_hsmc_nand_cmd_ctrl;
 chip->legacy.select_chip = atmel_hsmc_nand_select_chip;
}
