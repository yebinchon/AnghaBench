
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct cxl_afu {int adapter; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* read_adapter_vpd ) (int ,void*,size_t) ;} ;


 int ENODEV ;
 scalar_t__ IS_ERR (struct cxl_afu*) ;
 TYPE_1__* cxl_ops ;
 struct cxl_afu* cxl_pci_to_afu (struct pci_dev*) ;
 int stub1 (int ,void*,size_t) ;

ssize_t cxl_read_adapter_vpd(struct pci_dev *dev, void *buf, size_t count)
{
 struct cxl_afu *afu = cxl_pci_to_afu(dev);
 if (IS_ERR(afu))
  return -ENODEV;

 return cxl_ops->read_adapter_vpd(afu->adapter, buf, count);
}
