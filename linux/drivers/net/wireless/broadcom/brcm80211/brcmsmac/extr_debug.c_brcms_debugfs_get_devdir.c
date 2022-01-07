
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
struct brcms_pub {struct dentry* dbgfs_dir; } ;



struct dentry *brcms_debugfs_get_devdir(struct brcms_pub *drvr)
{
 return drvr->dbgfs_dir;
}
