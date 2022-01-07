
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400m {int debugfs_dentry; } ;


 int debugfs_remove_recursive (int ) ;

void i2400m_debugfs_rm(struct i2400m *i2400m)
{
 debugfs_remove_recursive(i2400m->debugfs_dentry);
}
