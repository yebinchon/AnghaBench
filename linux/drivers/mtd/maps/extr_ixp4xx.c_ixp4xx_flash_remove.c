
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct ixp4xx_flash_info {scalar_t__ mtd; } ;
struct flash_platform_data {int (* exit ) () ;} ;


 struct flash_platform_data* dev_get_platdata (int *) ;
 int map_destroy (scalar_t__) ;
 int mtd_device_unregister (scalar_t__) ;
 struct ixp4xx_flash_info* platform_get_drvdata (struct platform_device*) ;
 int stub1 () ;

__attribute__((used)) static int ixp4xx_flash_remove(struct platform_device *dev)
{
 struct flash_platform_data *plat = dev_get_platdata(&dev->dev);
 struct ixp4xx_flash_info *info = platform_get_drvdata(dev);

 if(!info)
  return 0;

 if (info->mtd) {
  mtd_device_unregister(info->mtd);
  map_destroy(info->mtd);
 }

 if (plat->exit)
  plat->exit();

 return 0;
}
