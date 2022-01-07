
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powernv_flash {int mtd; } ;
struct platform_device {int dev; } ;


 struct powernv_flash* dev_get_drvdata (int *) ;
 int mtd_device_unregister (int *) ;

__attribute__((used)) static int powernv_flash_release(struct platform_device *pdev)
{
 struct powernv_flash *data = dev_get_drvdata(&(pdev->dev));


 return mtd_device_unregister(&(data->mtd));
}
