
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct dentry* debugfs_dentry; } ;
struct i2400m {int trace_msg_from_user; int state; int tx_out; int tx_in; struct dentry* debugfs_dentry; TYPE_1__ wimax_dev; } ;
struct dentry {int dummy; } ;


 int control ;
 int d_level_register_debugfs (char*,int ,struct dentry*) ;
 int debugfs ;
 struct dentry* debugfs_create_dir (char*,struct dentry*) ;
 int debugfs_create_file (char*,int,struct dentry*,struct i2400m*,int *) ;
 int debugfs_create_size_t (char*,int,struct dentry*,int *) ;
 int debugfs_create_u32 (char*,int,struct dentry*,int *) ;
 int debugfs_create_u8 (char*,int,struct dentry*,int *) ;
 int driver ;
 int fops_i2400m_reset ;
 int fops_i2400m_suspend ;
 int fops_netdev_queue_stopped ;
 int fw ;
 int i2400m_rx_stats_fops ;
 int i2400m_tx_stats_fops ;
 int netdev ;
 int rfkill ;
 int rx ;
 int tx ;

void i2400m_debugfs_add(struct i2400m *i2400m)
{
 struct dentry *dentry = i2400m->wimax_dev.debugfs_dentry;

 dentry = debugfs_create_dir("i2400m", dentry);
 i2400m->debugfs_dentry = dentry;

 d_level_register_debugfs("dl_", control, dentry);
 d_level_register_debugfs("dl_", driver, dentry);
 d_level_register_debugfs("dl_", debugfs, dentry);
 d_level_register_debugfs("dl_", fw, dentry);
 d_level_register_debugfs("dl_", netdev, dentry);
 d_level_register_debugfs("dl_", rfkill, dentry);
 d_level_register_debugfs("dl_", rx, dentry);
 d_level_register_debugfs("dl_", tx, dentry);

 debugfs_create_size_t("tx_in", 0400, dentry, &i2400m->tx_in);
 debugfs_create_size_t("tx_out", 0400, dentry, &i2400m->tx_out);
 debugfs_create_u32("state", 0600, dentry, &i2400m->state);
 debugfs_create_u8("trace_msg_from_user", 0600, dentry,
     &i2400m->trace_msg_from_user);

 debugfs_create_file("netdev_queue_stopped", 0400, dentry, i2400m,
       &fops_netdev_queue_stopped);

 debugfs_create_file("rx_stats", 0600, dentry, i2400m,
       &i2400m_rx_stats_fops);

 debugfs_create_file("tx_stats", 0600, dentry, i2400m,
       &i2400m_tx_stats_fops);

 debugfs_create_file("suspend", 0200, dentry, i2400m,
       &fops_i2400m_suspend);

 debugfs_create_file("reset", 0200, dentry, i2400m, &fops_i2400m_reset);
}
