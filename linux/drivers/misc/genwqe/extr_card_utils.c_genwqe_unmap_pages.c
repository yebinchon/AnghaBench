
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct genwqe_dev {struct pci_dev* pci_dev; } ;
typedef int dma_addr_t ;


 int PAGE_SIZE ;
 int PCI_DMA_BIDIRECTIONAL ;
 int pci_unmap_page (struct pci_dev*,int,int ,int ) ;

__attribute__((used)) static void genwqe_unmap_pages(struct genwqe_dev *cd, dma_addr_t *dma_list,
         int num_pages)
{
 int i;
 struct pci_dev *pci_dev = cd->pci_dev;

 for (i = 0; (i < num_pages) && (dma_list[i] != 0x0); i++) {
  pci_unmap_page(pci_dev, dma_list[i],
          PAGE_SIZE, PCI_DMA_BIDIRECTIONAL);
  dma_list[i] = 0x0;
 }
}
