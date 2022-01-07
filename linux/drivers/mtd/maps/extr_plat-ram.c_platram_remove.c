
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platram_info {scalar_t__ mtd; } ;
struct platform_device {int dev; } ;


 int PLATRAM_RO ;
 int dev_dbg (int *,char*) ;
 int kfree (struct platram_info*) ;
 int map_destroy (scalar_t__) ;
 int mtd_device_unregister (scalar_t__) ;
 int platram_setrw (struct platram_info*,int ) ;
 struct platram_info* to_platram_info (struct platform_device*) ;

__attribute__((used)) static int platram_remove(struct platform_device *pdev)
{
 struct platram_info *info = to_platram_info(pdev);

 dev_dbg(&pdev->dev, "removing device\n");

 if (info == ((void*)0))
  return 0;

 if (info->mtd) {
  mtd_device_unregister(info->mtd);
  map_destroy(info->mtd);
 }



 platram_setrw(info, PLATRAM_RO);

 kfree(info);

 return 0;
}
