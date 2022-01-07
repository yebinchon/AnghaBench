
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
 int device_remove_bin_file (struct device*,int *) ;
 int device_remove_file (struct device*,int *) ;

__attribute__((used)) static void
netxen_remove_diag_entries(struct netxen_adapter *adapter)
{
 struct pci_dev *pdev = adapter->pdev;
 struct device *dev = &pdev->dev;

 device_remove_file(dev, &dev_attr_diag_mode);
 device_remove_bin_file(dev, &bin_attr_crb);
 device_remove_bin_file(dev, &bin_attr_mem);
 device_remove_bin_file(dev, &bin_attr_dimm);
}
