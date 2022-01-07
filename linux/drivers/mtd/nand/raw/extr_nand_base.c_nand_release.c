
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;


 int mtd_device_unregister (int ) ;
 int nand_cleanup (struct nand_chip*) ;
 int nand_to_mtd (struct nand_chip*) ;

void nand_release(struct nand_chip *chip)
{
 mtd_device_unregister(nand_to_mtd(chip));
 nand_cleanup(chip);
}
