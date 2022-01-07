
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;
struct ingenic_nand {int reading; } ;


 int NAND_ECC_READ ;
 int nand_to_mtd (struct nand_chip*) ;
 struct ingenic_nand* to_ingenic_nand (int ) ;

__attribute__((used)) static void ingenic_nand_ecc_hwctl(struct nand_chip *chip, int mode)
{
 struct ingenic_nand *nand = to_ingenic_nand(nand_to_mtd(chip));

 nand->reading = (mode == NAND_ECC_READ);
}
