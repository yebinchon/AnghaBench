
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct netxen_adapter {scalar_t__ (* pci_mem_read ) (struct netxen_adapter*,int ,int *) ;} ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct device {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int EIO ;
 struct netxen_adapter* dev_get_drvdata (struct device*) ;
 struct device* kobj_to_dev (struct kobject*) ;
 int memcpy (char*,int *,size_t) ;
 int netxen_sysfs_validate_mem (struct netxen_adapter*,int ,size_t) ;
 scalar_t__ stub1 (struct netxen_adapter*,int ,int *) ;

__attribute__((used)) static ssize_t
netxen_sysfs_read_mem(struct file *filp, struct kobject *kobj,
  struct bin_attribute *attr,
  char *buf, loff_t offset, size_t size)
{
 struct device *dev = kobj_to_dev(kobj);
 struct netxen_adapter *adapter = dev_get_drvdata(dev);
 u64 data;
 int ret;

 ret = netxen_sysfs_validate_mem(adapter, offset, size);
 if (ret != 0)
  return ret;

 if (adapter->pci_mem_read(adapter, offset, &data))
  return -EIO;

 memcpy(buf, &data, size);

 return size;
}
