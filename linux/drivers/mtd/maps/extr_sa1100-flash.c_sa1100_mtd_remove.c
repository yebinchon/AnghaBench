
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa_info {int dummy; } ;
struct platform_device {int dev; } ;
struct flash_platform_data {int dummy; } ;


 struct flash_platform_data* dev_get_platdata (int *) ;
 struct sa_info* platform_get_drvdata (struct platform_device*) ;
 int sa1100_destroy (struct sa_info*,struct flash_platform_data*) ;

__attribute__((used)) static int sa1100_mtd_remove(struct platform_device *pdev)
{
 struct sa_info *info = platform_get_drvdata(pdev);
 struct flash_platform_data *plat = dev_get_platdata(&pdev->dev);

 sa1100_destroy(info, plat);

 return 0;
}
