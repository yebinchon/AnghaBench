
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int flags; } ;
typedef size_t loff_t ;


 scalar_t__ ADDR_IN_RANGE (size_t,int ,int ) ;
 int EINVAL ;
 int EIO ;
 int QLCNIC_DIAG_ENABLED ;
 int QLCNIC_PCI_CAMQM ;
 int QLCNIC_PCI_CAMQM_END ;
 size_t QLCNIC_PCI_CRBSPACE ;

__attribute__((used)) static int qlcnic_sysfs_validate_crb(struct qlcnic_adapter *adapter,
         loff_t offset, size_t size)
{
 size_t crb_size = 4;

 if (!(adapter->flags & QLCNIC_DIAG_ENABLED))
  return -EIO;

 if (offset < QLCNIC_PCI_CRBSPACE) {
  if (ADDR_IN_RANGE(offset, QLCNIC_PCI_CAMQM,
      QLCNIC_PCI_CAMQM_END))
   crb_size = 8;
  else
   return -EINVAL;
 }

 if ((size != crb_size) || (offset & (crb_size-1)))
  return -EINVAL;

 return 0;
}
