
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * virt; int size; } ;
struct uflash_dev {TYPE_1__ map; scalar_t__ mtd; } ;
struct platform_device {int * resource; int dev; } ;


 struct uflash_dev* dev_get_drvdata (int *) ;
 int kfree (struct uflash_dev*) ;
 int map_destroy (scalar_t__) ;
 int mtd_device_unregister (scalar_t__) ;
 int of_iounmap (int *,int *,int ) ;

__attribute__((used)) static int uflash_remove(struct platform_device *op)
{
 struct uflash_dev *up = dev_get_drvdata(&op->dev);

 if (up->mtd) {
  mtd_device_unregister(up->mtd);
  map_destroy(up->mtd);
 }
 if (up->map.virt) {
  of_iounmap(&op->resource[0], up->map.virt, up->map.size);
  up->map.virt = ((void*)0);
 }

 kfree(up);

 return 0;
}
