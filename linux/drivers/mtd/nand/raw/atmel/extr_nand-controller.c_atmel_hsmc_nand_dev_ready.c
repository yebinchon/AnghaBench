
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct nand_chip {int controller; } ;
struct atmel_nand {TYPE_3__* activecs; } ;
struct TYPE_4__ {int smc; } ;
struct atmel_hsmc_nand_controller {TYPE_1__ base; } ;
struct TYPE_5__ {int id; } ;
struct TYPE_6__ {TYPE_2__ rb; } ;


 int ATMEL_HSMC_NFC_SR ;
 int ATMEL_HSMC_NFC_SR_RBEDGE (int ) ;
 int regmap_read (int ,int ,int*) ;
 struct atmel_nand* to_atmel_nand (struct nand_chip*) ;
 struct atmel_hsmc_nand_controller* to_hsmc_nand_controller (int ) ;

__attribute__((used)) static int atmel_hsmc_nand_dev_ready(struct nand_chip *chip)
{
 struct atmel_nand *nand = to_atmel_nand(chip);
 struct atmel_hsmc_nand_controller *nc;
 u32 status;

 nc = to_hsmc_nand_controller(chip->controller);

 regmap_read(nc->base.smc, ATMEL_HSMC_NFC_SR, &status);

 return status & ATMEL_HSMC_NFC_SR_RBEDGE(nand->activecs->rb.id);
}
