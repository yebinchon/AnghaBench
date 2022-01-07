
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_3__ {int dev; int vendor; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* broken_dev_id ;
 int dma_reset_workaround ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_device (int ,int ,int *) ;

__attribute__((used)) static bool cx23885_does_need_dma_reset(void)
{
 int i;
 struct pci_dev *pdev = ((void*)0);

 if (dma_reset_workaround == 0)
  return 0;
 else if (dma_reset_workaround == 2)
  return 1;

 for (i = 0; i < ARRAY_SIZE(broken_dev_id); i++) {
  pdev = pci_get_device(broken_dev_id[i].vendor,
          broken_dev_id[i].dev, ((void*)0));
  if (pdev) {
   pci_dev_put(pdev);
   return 1;
  }
 }
 return 0;
}
