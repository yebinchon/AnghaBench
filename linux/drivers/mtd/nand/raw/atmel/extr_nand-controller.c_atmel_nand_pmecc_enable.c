
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int controller; } ;
struct atmel_nand_controller {int dev; } ;
struct atmel_nand {int pmecc; } ;


 int atmel_pmecc_enable (int ,int) ;
 int dev_err (int ,char*,int) ;
 struct atmel_nand* to_atmel_nand (struct nand_chip*) ;
 struct atmel_nand_controller* to_nand_controller (int ) ;

__attribute__((used)) static int atmel_nand_pmecc_enable(struct nand_chip *chip, int op, bool raw)
{
 struct atmel_nand *nand = to_atmel_nand(chip);
 struct atmel_nand_controller *nc;
 int ret;

 nc = to_nand_controller(chip->controller);

 if (raw)
  return 0;

 ret = atmel_pmecc_enable(nand->pmecc, op);
 if (ret)
  dev_err(nc->dev,
   "Failed to enable ECC engine (err = %d)\n", ret);

 return ret;
}
