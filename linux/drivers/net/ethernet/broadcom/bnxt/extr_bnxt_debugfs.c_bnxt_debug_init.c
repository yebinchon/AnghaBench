
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bnxt_debug_mnt ;
 int debugfs_create_dir (char*,int *) ;

void bnxt_debug_init(void)
{
 bnxt_debug_mnt = debugfs_create_dir("bnxt_en", ((void*)0));
}
