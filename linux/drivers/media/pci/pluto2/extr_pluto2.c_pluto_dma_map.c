
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pluto {int dma_addr; int pdev; int dma_buf; } ;


 int PCI_DMA_FROMDEVICE ;
 int TS_DMA_BYTES ;
 int pci_dma_mapping_error (int ,int ) ;
 int pci_map_single (int ,int ,int ,int ) ;

__attribute__((used)) static int pluto_dma_map(struct pluto *pluto)
{
 pluto->dma_addr = pci_map_single(pluto->pdev, pluto->dma_buf,
   TS_DMA_BYTES, PCI_DMA_FROMDEVICE);

 return pci_dma_mapping_error(pluto->pdev, pluto->dma_addr);
}
