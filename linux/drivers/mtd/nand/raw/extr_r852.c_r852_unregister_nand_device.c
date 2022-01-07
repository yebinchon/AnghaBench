
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r852_device {scalar_t__ card_registered; int chip; } ;
struct mtd_info {int dev; } ;


 int dev_attr_media_type ;
 int device_remove_file (int *,int *) ;
 int nand_release (int ) ;
 struct mtd_info* nand_to_mtd (int ) ;
 int r852_engine_disable (struct r852_device*) ;

__attribute__((used)) static void r852_unregister_nand_device(struct r852_device *dev)
{
 struct mtd_info *mtd = nand_to_mtd(dev->chip);

 if (!dev->card_registered)
  return;

 device_remove_file(&mtd->dev, &dev_attr_media_type);
 nand_release(dev->chip);
 r852_engine_disable(dev);
 dev->card_registered = 0;
}
