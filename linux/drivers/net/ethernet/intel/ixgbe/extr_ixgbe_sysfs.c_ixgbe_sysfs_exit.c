
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_adapter {int dummy; } ;


 int ixgbe_sysfs_del_adapter (struct ixgbe_adapter*) ;

void ixgbe_sysfs_exit(struct ixgbe_adapter *adapter)
{
 ixgbe_sysfs_del_adapter(adapter);
}
