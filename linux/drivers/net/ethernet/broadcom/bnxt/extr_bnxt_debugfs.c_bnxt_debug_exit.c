
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bnxt_debug_mnt ;
 int debugfs_remove_recursive (int ) ;

void bnxt_debug_exit(void)
{
 debugfs_remove_recursive(bnxt_debug_mnt);
}
