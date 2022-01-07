
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;
struct gpiomtd {int rdy; } ;


 struct gpiomtd* gpio_nand_getpriv (int ) ;
 int gpiod_get_value (int ) ;
 int nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int gpio_nand_devready(struct nand_chip *chip)
{
 struct gpiomtd *gpiomtd = gpio_nand_getpriv(nand_to_mtd(chip));

 return gpiod_get_value(gpiomtd->rdy);
}
