
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct physmap_flash_info {scalar_t__ cmtd; scalar_t__* mtds; int nmaps; } ;
struct physmap_flash_data {int (* exit ) (struct platform_device*) ;} ;


 struct physmap_flash_data* dev_get_platdata (int *) ;
 int map_destroy (scalar_t__) ;
 int mtd_concat_destroy (scalar_t__) ;
 int mtd_device_unregister (scalar_t__) ;
 struct physmap_flash_info* platform_get_drvdata (struct platform_device*) ;
 int stub1 (struct platform_device*) ;

__attribute__((used)) static int physmap_flash_remove(struct platform_device *dev)
{
 struct physmap_flash_info *info;
 struct physmap_flash_data *physmap_data;
 int i, err;

 info = platform_get_drvdata(dev);
 if (!info)
  return 0;

 if (info->cmtd) {
  err = mtd_device_unregister(info->cmtd);
  if (err)
   return err;

  if (info->cmtd != info->mtds[0])
   mtd_concat_destroy(info->cmtd);
 }

 for (i = 0; i < info->nmaps; i++) {
  if (info->mtds[i])
   map_destroy(info->mtds[i]);
 }

 physmap_data = dev_get_platdata(&dev->dev);
 if (physmap_data && physmap_data->exit)
  physmap_data->exit(dev);

 return 0;
}
