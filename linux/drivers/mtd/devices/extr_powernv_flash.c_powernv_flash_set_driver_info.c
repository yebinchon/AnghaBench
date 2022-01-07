
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {struct device* parent; } ;
struct mtd_info {int writebufsize; int writesize; TYPE_1__ dev; int _write; int _read; int _erase; int owner; int erasesize; int size; int flags; int type; int name; } ;
struct device {int of_node; } ;


 int GFP_KERNEL ;
 int MTD_NORFLASH ;
 int MTD_WRITEABLE ;
 int THIS_MODULE ;
 int dev_err (struct device*,char*) ;
 int devm_kasprintf (struct device*,int ,char*,int ) ;
 int mtd_set_of_node (struct mtd_info*,int ) ;
 int of_property_read_u32 (int ,char*,int *) ;
 int of_property_read_u64 (int ,char*,int *) ;
 int powernv_flash_erase ;
 int powernv_flash_read ;
 int powernv_flash_write ;

__attribute__((used)) static int powernv_flash_set_driver_info(struct device *dev,
  struct mtd_info *mtd)
{
 u64 size;
 u32 erase_size;
 int rc;

 rc = of_property_read_u32(dev->of_node, "ibm,flash-block-size",
   &erase_size);
 if (rc) {
  dev_err(dev, "couldn't get resource block size information\n");
  return rc;
 }

 rc = of_property_read_u64(dev->of_node, "reg", &size);
 if (rc) {
  dev_err(dev, "couldn't get resource size information\n");
  return rc;
 }





 mtd->name = devm_kasprintf(dev, GFP_KERNEL, "%pOFP", dev->of_node);
 mtd->type = MTD_NORFLASH;
 mtd->flags = MTD_WRITEABLE;
 mtd->size = size;
 mtd->erasesize = erase_size;
 mtd->writebufsize = mtd->writesize = 1;
 mtd->owner = THIS_MODULE;
 mtd->_erase = powernv_flash_erase;
 mtd->_read = powernv_flash_read;
 mtd->_write = powernv_flash_write;
 mtd->dev.parent = dev;
 mtd_set_of_node(mtd, dev->of_node);
 return 0;
}
