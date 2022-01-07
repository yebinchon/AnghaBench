
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;


 int NAND_STATUS_READY ;
 int lpc32xx_waitfunc_controller (struct nand_chip*) ;
 int lpc32xx_waitfunc_nand (struct nand_chip*) ;

__attribute__((used)) static int lpc32xx_waitfunc(struct nand_chip *chip)
{
 lpc32xx_waitfunc_nand(chip);
 lpc32xx_waitfunc_controller(chip);

 return NAND_STATUS_READY;
}
