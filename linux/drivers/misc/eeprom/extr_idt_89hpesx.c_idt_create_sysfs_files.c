
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct idt_89hpesx_dev {scalar_t__ eesize; TYPE_3__* ee_file; scalar_t__ eero; TYPE_1__* client; } ;
struct device {int kobj; } ;
struct TYPE_7__ {int mode; } ;
struct TYPE_8__ {scalar_t__ size; int * write; TYPE_2__ attr; } ;
struct TYPE_6__ {struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int bin_attr_eeprom ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*) ;
 TYPE_3__* devm_kmalloc (struct device*,int,int ) ;
 int memcpy (TYPE_3__*,int *,int) ;
 int sysfs_create_bin_file (int *,TYPE_3__*) ;

__attribute__((used)) static int idt_create_sysfs_files(struct idt_89hpesx_dev *pdev)
{
 struct device *dev = &pdev->client->dev;
 int ret;


 if (pdev->eesize == 0) {
  dev_dbg(dev, "Skip creating sysfs-files");
  return 0;
 }


 pdev->ee_file = devm_kmalloc(dev, sizeof(*pdev->ee_file), GFP_KERNEL);
 if (!pdev->ee_file)
  return -ENOMEM;


 memcpy(pdev->ee_file, &bin_attr_eeprom, sizeof(*pdev->ee_file));


 if (pdev->eero) {
  pdev->ee_file->attr.mode &= ~0200;
  pdev->ee_file->write = ((void*)0);
 }

 pdev->ee_file->size = pdev->eesize;
 ret = sysfs_create_bin_file(&dev->kobj, pdev->ee_file);
 if (ret != 0) {
  dev_err(dev, "Failed to create EEPROM sysfs-node");
  return ret;
 }

 return 0;
}
