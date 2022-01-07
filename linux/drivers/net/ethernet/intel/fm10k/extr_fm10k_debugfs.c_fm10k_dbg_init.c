
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dbg_root ;
 int debugfs_create_dir (int ,int *) ;
 int fm10k_driver_name ;

void fm10k_dbg_init(void)
{
 dbg_root = debugfs_create_dir(fm10k_driver_name, ((void*)0));
}
