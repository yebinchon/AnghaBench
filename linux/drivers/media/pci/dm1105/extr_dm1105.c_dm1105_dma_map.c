
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm1105_dev {int ts_buf; int dma_addr; int pdev; } ;


 int DM1105_DMA_BYTES ;
 int pci_alloc_consistent (int ,int,int *) ;

__attribute__((used)) static int dm1105_dma_map(struct dm1105_dev *dev)
{
 dev->ts_buf = pci_alloc_consistent(dev->pdev,
     6 * DM1105_DMA_BYTES,
     &dev->dma_addr);

 return !dev->ts_buf;
}
