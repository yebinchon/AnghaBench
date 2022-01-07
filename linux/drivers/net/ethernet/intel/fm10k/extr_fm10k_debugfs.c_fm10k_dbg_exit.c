
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * dbg_root ;
 int debugfs_remove_recursive (int *) ;

void fm10k_dbg_exit(void)
{
 debugfs_remove_recursive(dbg_root);
 dbg_root = ((void*)0);
}
