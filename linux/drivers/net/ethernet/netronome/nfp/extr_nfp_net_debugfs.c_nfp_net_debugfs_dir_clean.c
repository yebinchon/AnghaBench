
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int debugfs_remove_recursive (struct dentry*) ;

void nfp_net_debugfs_dir_clean(struct dentry **dir)
{
 debugfs_remove_recursive(*dir);
 *dir = ((void*)0);
}
