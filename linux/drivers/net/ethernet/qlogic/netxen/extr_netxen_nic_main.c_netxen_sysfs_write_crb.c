
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {int revision_id; } ;
struct netxen_adapter {TYPE_1__ ahw; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct device {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;


 scalar_t__ ADDR_IN_RANGE (int ,int ,int ) ;
 int NETXEN_PCI_CAMQM ;
 int NETXEN_PCI_CAMQM_2M_END ;
 int NXWR32 (struct netxen_adapter*,int ,int ) ;
 scalar_t__ NX_IS_REVISION_P3 (int ) ;
 struct netxen_adapter* dev_get_drvdata (struct device*) ;
 struct device* kobj_to_dev (struct kobject*) ;
 int memcpy (int *,char*,size_t) ;
 int netxen_pci_camqm_write_2M (struct netxen_adapter*,int ,int ) ;
 int netxen_sysfs_validate_crb (struct netxen_adapter*,int ,size_t) ;

__attribute__((used)) static ssize_t
netxen_sysfs_write_crb(struct file *filp, struct kobject *kobj,
  struct bin_attribute *attr,
  char *buf, loff_t offset, size_t size)
{
 struct device *dev = kobj_to_dev(kobj);
 struct netxen_adapter *adapter = dev_get_drvdata(dev);
 u32 data;
 u64 qmdata;
 int ret;

 ret = netxen_sysfs_validate_crb(adapter, offset, size);
 if (ret != 0)
  return ret;

 if (NX_IS_REVISION_P3(adapter->ahw.revision_id) &&
  ADDR_IN_RANGE(offset, NETXEN_PCI_CAMQM,
     NETXEN_PCI_CAMQM_2M_END)) {
  memcpy(&qmdata, buf, size);
  netxen_pci_camqm_write_2M(adapter, offset, qmdata);
 } else {
  memcpy(&data, buf, size);
  NXWR32(adapter, offset, data);
 }

 return size;
}
