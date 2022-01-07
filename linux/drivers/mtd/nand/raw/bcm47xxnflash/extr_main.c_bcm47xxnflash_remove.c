
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct bcm47xxnflash {int nand_chip; } ;


 int nand_release (int *) ;
 struct bcm47xxnflash* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int bcm47xxnflash_remove(struct platform_device *pdev)
{
 struct bcm47xxnflash *nflash = platform_get_drvdata(pdev);

 nand_release(&nflash->nand_chip);

 return 0;
}
