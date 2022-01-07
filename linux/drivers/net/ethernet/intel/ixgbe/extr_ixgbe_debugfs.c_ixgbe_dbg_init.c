
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_create_dir (int ,int *) ;
 int ixgbe_dbg_root ;
 int ixgbe_driver_name ;

void ixgbe_dbg_init(void)
{
 ixgbe_dbg_root = debugfs_create_dir(ixgbe_driver_name, ((void*)0));
}
