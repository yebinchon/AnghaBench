
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ data; } ;
struct mt76_dev {int dev; TYPE_3__ otp; TYPE_3__ eeprom; int debugfs_reg; int led_pin; TYPE_2__* hw; } ;
struct dentry {int dummy; } ;
struct TYPE_5__ {TYPE_1__* wiphy; } ;
struct TYPE_4__ {int debugfsdir; } ;


 int debugfs_create_blob (char*,int,struct dentry*,TYPE_3__*) ;
 int debugfs_create_devm_seqfile (int ,char*,struct dentry*,int ) ;
 struct dentry* debugfs_create_dir (char*,int ) ;
 int debugfs_create_file_unsafe (char*,int,struct dentry*,struct mt76_dev*,int *) ;
 int debugfs_create_u32 (char*,int,struct dentry*,int *) ;
 int debugfs_create_u8 (char*,int,struct dentry*,int *) ;
 int fops_regval ;
 int mt76_queues_read ;
 int mt76_read_rate_txpower ;

struct dentry *mt76_register_debugfs(struct mt76_dev *dev)
{
 struct dentry *dir;

 dir = debugfs_create_dir("mt76", dev->hw->wiphy->debugfsdir);
 if (!dir)
  return ((void*)0);

 debugfs_create_u8("led_pin", 0600, dir, &dev->led_pin);
 debugfs_create_u32("regidx", 0600, dir, &dev->debugfs_reg);
 debugfs_create_file_unsafe("regval", 0600, dir, dev,
       &fops_regval);
 debugfs_create_blob("eeprom", 0400, dir, &dev->eeprom);
 if (dev->otp.data)
  debugfs_create_blob("otp", 0400, dir, &dev->otp);
 debugfs_create_devm_seqfile(dev->dev, "queues", dir, mt76_queues_read);
 debugfs_create_devm_seqfile(dev->dev, "rate_txpower", dir,
        mt76_read_rate_txpower);

 return dir;
}
