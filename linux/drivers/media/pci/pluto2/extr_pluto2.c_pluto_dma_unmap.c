
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pluto {int dma_addr; int pdev; } ;


 int PCI_DMA_FROMDEVICE ;
 int TS_DMA_BYTES ;
 int pci_unmap_single (int ,int ,int ,int ) ;

__attribute__((used)) static void pluto_dma_unmap(struct pluto *pluto)
{
 pci_unmap_single(pluto->pdev, pluto->dma_addr,
   TS_DMA_BYTES, PCI_DMA_FROMDEVICE);
}
