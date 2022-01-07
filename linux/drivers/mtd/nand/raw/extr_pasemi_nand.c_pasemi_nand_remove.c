
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {int IO_ADDR_R; } ;
struct nand_chip {TYPE_1__ legacy; } ;


 int iounmap (int ) ;
 int kfree (struct nand_chip*) ;
 int lpcctl ;
 struct nand_chip* mtd_to_nand (int *) ;
 int nand_release (struct nand_chip*) ;
 int * pasemi_nand_mtd ;
 int release_region (int ,int) ;

__attribute__((used)) static int pasemi_nand_remove(struct platform_device *ofdev)
{
 struct nand_chip *chip;

 if (!pasemi_nand_mtd)
  return 0;

 chip = mtd_to_nand(pasemi_nand_mtd);


 nand_release(chip);

 release_region(lpcctl, 4);

 iounmap(chip->legacy.IO_ADDR_R);


 kfree(chip);

 pasemi_nand_mtd = ((void*)0);

 return 0;
}
