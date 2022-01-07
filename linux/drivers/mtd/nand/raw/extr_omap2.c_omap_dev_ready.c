
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_nand_info {int ready_gpiod; } ;
struct nand_chip {int dummy; } ;


 int gpiod_get_value (int ) ;
 struct omap_nand_info* mtd_to_omap (int ) ;
 int nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int omap_dev_ready(struct nand_chip *chip)
{
 struct omap_nand_info *info = mtd_to_omap(nand_to_mtd(chip));

 return gpiod_get_value(info->ready_gpiod);
}
