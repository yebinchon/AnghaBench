
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netxen_adapter {int flags; } ;
typedef int loff_t ;


 int EIO ;
 int NETXEN_NIC_DIAG_ENABLED ;

__attribute__((used)) static int
netxen_sysfs_validate_mem(struct netxen_adapter *adapter,
  loff_t offset, size_t size)
{
 if (!(adapter->flags & NETXEN_NIC_DIAG_ENABLED))
  return -EIO;

 if ((size != 8) || (offset & 0x7))
  return -EIO;

 return 0;
}
