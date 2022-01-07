
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ debugfs_create_dir (char*,int *) ;
 scalar_t__ mwifiex_dfs_dir ;

void
mwifiex_debugfs_init(void)
{
 if (!mwifiex_dfs_dir)
  mwifiex_dfs_dir = debugfs_create_dir("mwifiex", ((void*)0));
}
