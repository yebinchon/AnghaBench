
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct physmap_flash_info {int vpp_refcnt; int vpp_lock; } ;
struct physmap_flash_data {int (* set_vpp ) (struct platform_device*,int) ;} ;
struct map_info {scalar_t__ map_priv_1; } ;


 struct physmap_flash_data* dev_get_platdata (int *) ;
 struct physmap_flash_info* platform_get_drvdata (struct platform_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct platform_device*,int) ;
 int stub2 (struct platform_device*,int) ;

__attribute__((used)) static void physmap_set_vpp(struct map_info *map, int state)
{
 struct platform_device *pdev;
 struct physmap_flash_data *physmap_data;
 struct physmap_flash_info *info;
 unsigned long flags;

 pdev = (struct platform_device *)map->map_priv_1;
 physmap_data = dev_get_platdata(&pdev->dev);

 if (!physmap_data->set_vpp)
  return;

 info = platform_get_drvdata(pdev);

 spin_lock_irqsave(&info->vpp_lock, flags);
 if (state) {
  if (++info->vpp_refcnt == 1)
   physmap_data->set_vpp(pdev, 1);
 } else {
  if (--info->vpp_refcnt == 0)
   physmap_data->set_vpp(pdev, 0);
 }
 spin_unlock_irqrestore(&info->vpp_lock, flags);
}
