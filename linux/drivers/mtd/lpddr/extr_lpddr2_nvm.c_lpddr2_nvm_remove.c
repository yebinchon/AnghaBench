
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int dev_get_drvdata (int *) ;
 int mtd_device_unregister (int ) ;

__attribute__((used)) static int lpddr2_nvm_remove(struct platform_device *pdev)
{
 return mtd_device_unregister(dev_get_drvdata(&pdev->dev));
}
