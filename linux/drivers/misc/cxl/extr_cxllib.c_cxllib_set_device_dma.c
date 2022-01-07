
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int DMA_BIT_MASK (int) ;
 int EINVAL ;
 int dma_set_mask (int *,int ) ;

int cxllib_set_device_dma(struct pci_dev *dev, unsigned long flags)
{
 int rc;

 if (flags)
  return -EINVAL;

 rc = dma_set_mask(&dev->dev, DMA_BIT_MASK(64));
 return rc;
}
