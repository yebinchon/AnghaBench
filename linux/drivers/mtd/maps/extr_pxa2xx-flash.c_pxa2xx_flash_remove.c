
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cached; scalar_t__ virt; } ;
struct pxa2xx_flash_info {TYPE_1__ map; int mtd; } ;
struct platform_device {int dummy; } ;


 int iounmap (scalar_t__) ;
 int kfree (struct pxa2xx_flash_info*) ;
 int map_destroy (int ) ;
 int mtd_device_unregister (int ) ;
 struct pxa2xx_flash_info* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int pxa2xx_flash_remove(struct platform_device *dev)
{
 struct pxa2xx_flash_info *info = platform_get_drvdata(dev);

 mtd_device_unregister(info->mtd);

 map_destroy(info->mtd);
 iounmap(info->map.virt);
 if (info->map.cached)
  iounmap(info->map.cached);
 kfree(info);
 return 0;
}
