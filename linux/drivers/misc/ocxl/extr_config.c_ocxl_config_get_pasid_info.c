
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int pnv_ocxl_get_pasid_count (struct pci_dev*,int*) ;

int ocxl_config_get_pasid_info(struct pci_dev *dev, int *count)
{
 return pnv_ocxl_get_pasid_count(dev, count);
}
