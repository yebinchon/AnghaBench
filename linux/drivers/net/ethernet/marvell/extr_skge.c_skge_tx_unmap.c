
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct skge_element {int dummy; } ;
struct pci_dev {int dummy; } ;


 int BMU_STF ;
 int PCI_DMA_TODEVICE ;
 int dma_unmap_addr (struct skge_element*,int ) ;
 int dma_unmap_len (struct skge_element*,int ) ;
 int mapaddr ;
 int maplen ;
 int pci_unmap_page (struct pci_dev*,int ,int ,int ) ;
 int pci_unmap_single (struct pci_dev*,int ,int ,int ) ;

__attribute__((used)) static inline void skge_tx_unmap(struct pci_dev *pdev, struct skge_element *e,
     u32 control)
{

 if (control & BMU_STF)
  pci_unmap_single(pdev, dma_unmap_addr(e, mapaddr),
     dma_unmap_len(e, maplen),
     PCI_DMA_TODEVICE);
 else
  pci_unmap_page(pdev, dma_unmap_addr(e, mapaddr),
          dma_unmap_len(e, maplen),
          PCI_DMA_TODEVICE);
}
