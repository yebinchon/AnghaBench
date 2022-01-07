
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* remove ) (struct platform_device*) ;} ;
struct platform_nand_data {TYPE_1__ ctrl; } ;
struct platform_device {int dev; } ;
struct plat_nand_data {int chip; } ;


 struct platform_nand_data* dev_get_platdata (int *) ;
 int nand_release (int *) ;
 struct plat_nand_data* platform_get_drvdata (struct platform_device*) ;
 int stub1 (struct platform_device*) ;

__attribute__((used)) static int plat_nand_remove(struct platform_device *pdev)
{
 struct plat_nand_data *data = platform_get_drvdata(pdev);
 struct platform_nand_data *pdata = dev_get_platdata(&pdev->dev);

 nand_release(&data->chip);
 if (pdata->ctrl.remove)
  pdata->ctrl.remove(pdev);

 return 0;
}
