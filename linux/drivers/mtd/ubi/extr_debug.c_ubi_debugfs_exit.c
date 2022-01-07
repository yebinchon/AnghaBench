
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_DEBUG_FS ;
 scalar_t__ IS_ENABLED (int ) ;
 int debugfs_remove (int ) ;
 int dfs_rootdir ;

void ubi_debugfs_exit(void)
{
 if (IS_ENABLED(CONFIG_DEBUG_FS))
  debugfs_remove(dfs_rootdir);
}
