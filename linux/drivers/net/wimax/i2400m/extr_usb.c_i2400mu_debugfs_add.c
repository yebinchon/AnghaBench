
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct dentry* debugfs_dentry; } ;
struct TYPE_4__ {TYPE_1__ wimax_dev; } ;
struct i2400mu {int rx_size; int rx_size_auto_shrink; struct dentry* debugfs_dentry; TYPE_2__ i2400m; } ;
struct dentry {int dummy; } ;


 int d_level_register_debugfs (char*,int ,struct dentry*) ;
 struct dentry* debugfs_create_dir (char*,struct dentry*) ;
 int debugfs_create_size_t (char*,int,struct dentry*,int *) ;
 int debugfs_create_u8 (char*,int,struct dentry*,int *) ;
 int fw ;
 int notif ;
 int rx ;
 int tx ;
 int usb ;

__attribute__((used)) static
void i2400mu_debugfs_add(struct i2400mu *i2400mu)
{
 struct dentry *dentry = i2400mu->i2400m.wimax_dev.debugfs_dentry;

 dentry = debugfs_create_dir("i2400m-usb", dentry);
 i2400mu->debugfs_dentry = dentry;

 d_level_register_debugfs("dl_", usb, dentry);
 d_level_register_debugfs("dl_", fw, dentry);
 d_level_register_debugfs("dl_", notif, dentry);
 d_level_register_debugfs("dl_", rx, dentry);
 d_level_register_debugfs("dl_", tx, dentry);


 debugfs_create_u8("rx_size_auto_shrink", 0600, dentry,
     &i2400mu->rx_size_auto_shrink);

 debugfs_create_size_t("rx_size", 0600, dentry, &i2400mu->rx_size);
}
