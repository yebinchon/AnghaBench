
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;
struct ingenic_nand {int busy_gpio; } ;


 int gpiod_get_value_cansleep (int ) ;
 int nand_to_mtd (struct nand_chip*) ;
 struct ingenic_nand* to_ingenic_nand (int ) ;

__attribute__((used)) static int ingenic_nand_dev_ready(struct nand_chip *chip)
{
 struct ingenic_nand *nand = to_ingenic_nand(nand_to_mtd(chip));

 return !gpiod_get_value_cansleep(nand->busy_gpio);
}
