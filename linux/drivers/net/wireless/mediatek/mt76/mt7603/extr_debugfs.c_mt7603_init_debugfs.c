
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct mt7603_dev {TYPE_1__ mt76; int reset_test; } ;
struct dentry {int dummy; } ;


 int debugfs_create_devm_seqfile (int ,char*,struct dentry*,int ) ;
 int debugfs_create_file (char*,int,struct dentry*,struct mt7603_dev*,int *) ;
 int debugfs_create_u32 (char*,int,struct dentry*,int *) ;
 int fops_edcca ;
 int mt7603_radio_read ;
 int mt7603_reset_read ;
 struct dentry* mt76_register_debugfs (TYPE_1__*) ;

void mt7603_init_debugfs(struct mt7603_dev *dev)
{
 struct dentry *dir;

 dir = mt76_register_debugfs(&dev->mt76);
 if (!dir)
  return;

 debugfs_create_file("edcca", 0600, dir, dev, &fops_edcca);
 debugfs_create_u32("reset_test", 0600, dir, &dev->reset_test);
 debugfs_create_devm_seqfile(dev->mt76.dev, "reset", dir,
        mt7603_reset_read);
 debugfs_create_devm_seqfile(dev->mt76.dev, "radio", dir,
        mt7603_radio_read);
}
