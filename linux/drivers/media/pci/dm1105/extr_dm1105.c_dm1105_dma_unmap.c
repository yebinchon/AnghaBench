
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm1105_dev {int dma_addr; int ts_buf; int pdev; } ;


 int DM1105_DMA_BYTES ;
 int pci_free_consistent (int ,int,int ,int ) ;

__attribute__((used)) static void dm1105_dma_unmap(struct dm1105_dev *dev)
{
 pci_free_consistent(dev->pdev,
   6 * DM1105_DMA_BYTES,
   dev->ts_buf,
   dev->dma_addr);
}
