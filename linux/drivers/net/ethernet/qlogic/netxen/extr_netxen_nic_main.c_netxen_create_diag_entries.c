
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;
struct netxen_adapter {struct pci_dev* pdev; } ;


 int bin_attr_crb ;
 int bin_attr_dimm ;
 int bin_attr_mem ;
 int dev_attr_diag_mode ;
 int dev_info (struct device*,char*) ;
 scalar_t__ device_create_bin_file (struct device*,int *) ;
 scalar_t__ device_create_file (struct device*,int *) ;

__attribute__((used)) static void
netxen_create_diag_entries(struct netxen_adapter *adapter)
{
 struct pci_dev *pdev = adapter->pdev;
 struct device *dev;

 dev = &pdev->dev;
 if (device_create_file(dev, &dev_attr_diag_mode))
  dev_info(dev, "failed to create diag_mode sysfs entry\n");
 if (device_create_bin_file(dev, &bin_attr_crb))
  dev_info(dev, "failed to create crb sysfs entry\n");
 if (device_create_bin_file(dev, &bin_attr_mem))
  dev_info(dev, "failed to create mem sysfs entry\n");
 if (device_create_bin_file(dev, &bin_attr_dimm))
  dev_info(dev, "failed to create dimm sysfs entry\n");
}
