
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int device; int dev; } ;
 int dev_warn (int *,char*,int) ;

bool hns3_is_phys_func(struct pci_dev *pdev)
{
 u32 dev_id = pdev->device;

 switch (dev_id) {
 case 128:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 135:
  return 1;
 case 134:
 case 136:
  return 0;
 default:
  dev_warn(&pdev->dev, "un-recognized pci device-id %d",
    dev_id);
 }

 return 0;
}
