
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct octeon_device {TYPE_1__* pci_dev; } ;
struct TYPE_4__ {int dev; } ;


 int DMA_BIT_MASK (int) ;
 int dev_err (int *,char*) ;
 scalar_t__ dma_set_mask_and_coherent (int *,int ) ;
 int pci_disable_device (TYPE_1__*) ;
 scalar_t__ pci_enable_device (TYPE_1__*) ;
 int pci_set_master (TYPE_1__*) ;

__attribute__((used)) static int octeon_pci_os_setup(struct octeon_device *oct)
{

 if (pci_enable_device(oct->pci_dev)) {
  dev_err(&oct->pci_dev->dev, "pci_enable_device failed\n");
  return 1;
 }

 if (dma_set_mask_and_coherent(&oct->pci_dev->dev, DMA_BIT_MASK(64))) {
  dev_err(&oct->pci_dev->dev, "Unexpected DMA device capability\n");
  pci_disable_device(oct->pci_dev);
  return 1;
 }


 pci_set_master(oct->pci_dev);

 return 0;
}
