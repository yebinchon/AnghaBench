
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct r852_device {int card_registered; scalar_t__ card_detected; TYPE_2__* chip; int sm; scalar_t__ readonly; TYPE_1__* pci_dev; } ;
struct TYPE_7__ {int * parent; } ;
struct mtd_info {TYPE_4__ dev; } ;
struct TYPE_6__ {int options; } ;
struct TYPE_5__ {int dev; } ;


 int NAND_ROM ;
 int WARN_ON (int) ;
 int dev_attr_media_type ;
 scalar_t__ device_create_file (TYPE_4__*,int *) ;
 int message (char*) ;
 int nand_release (TYPE_2__*) ;
 struct mtd_info* nand_to_mtd (TYPE_2__*) ;
 int r852_engine_enable (struct r852_device*) ;
 scalar_t__ sm_register_device (struct mtd_info*,int ) ;

__attribute__((used)) static int r852_register_nand_device(struct r852_device *dev)
{
 struct mtd_info *mtd = nand_to_mtd(dev->chip);

 WARN_ON(dev->card_registered);

 mtd->dev.parent = &dev->pci_dev->dev;

 if (dev->readonly)
  dev->chip->options |= NAND_ROM;

 r852_engine_enable(dev);

 if (sm_register_device(mtd, dev->sm))
  goto error1;

 if (device_create_file(&mtd->dev, &dev_attr_media_type)) {
  message("can't create media type sysfs attribute");
  goto error3;
 }

 dev->card_registered = 1;
 return 0;
error3:
 nand_release(dev->chip);
error1:

 dev->card_detected = 0;
 return -1;
}
