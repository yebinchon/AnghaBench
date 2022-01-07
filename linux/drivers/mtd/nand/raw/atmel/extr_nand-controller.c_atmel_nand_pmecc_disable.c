
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;
struct atmel_nand {int pmecc; } ;


 int atmel_pmecc_disable (int ) ;
 struct atmel_nand* to_atmel_nand (struct nand_chip*) ;

__attribute__((used)) static void atmel_nand_pmecc_disable(struct nand_chip *chip, bool raw)
{
 struct atmel_nand *nand = to_atmel_nand(chip);

 if (!raw)
  atmel_pmecc_disable(nand->pmecc);
}
