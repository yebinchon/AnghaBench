
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_remove_recursive (int *) ;
 int * hns3_dbgfs_root ;

void hns3_dbg_unregister_debugfs(void)
{
 debugfs_remove_recursive(hns3_dbgfs_root);
 hns3_dbgfs_root = ((void*)0);
}
