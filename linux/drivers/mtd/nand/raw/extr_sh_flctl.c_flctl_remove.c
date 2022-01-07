
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_flctl {int chip; } ;
struct platform_device {int dev; } ;


 int flctl_release_dma (struct sh_flctl*) ;
 int nand_release (int *) ;
 struct sh_flctl* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;

__attribute__((used)) static int flctl_remove(struct platform_device *pdev)
{
 struct sh_flctl *flctl = platform_get_drvdata(pdev);

 flctl_release_dma(flctl);
 nand_release(&flctl->chip);
 pm_runtime_disable(&pdev->dev);

 return 0;
}
