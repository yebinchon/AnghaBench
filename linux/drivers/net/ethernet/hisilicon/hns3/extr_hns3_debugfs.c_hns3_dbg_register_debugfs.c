
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_create_dir (char const*,int *) ;
 int hns3_dbgfs_root ;

void hns3_dbg_register_debugfs(const char *debugfs_dir_name)
{
 hns3_dbgfs_root = debugfs_create_dir(debugfs_dir_name, ((void*)0));
}
