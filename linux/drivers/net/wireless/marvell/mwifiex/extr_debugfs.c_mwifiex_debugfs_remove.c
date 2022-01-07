
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_remove (int ) ;
 int mwifiex_dfs_dir ;

void
mwifiex_debugfs_remove(void)
{
 debugfs_remove(mwifiex_dfs_dir);
}
