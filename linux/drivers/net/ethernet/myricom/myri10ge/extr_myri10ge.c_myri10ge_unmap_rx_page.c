
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct myri10ge_rx_buffer_state {int page_offset; } ;


 int MYRI10GE_ALLOC_SIZE ;
 int PCI_DMA_FROMDEVICE ;
 int bus ;
 int dma_unmap_addr (struct myri10ge_rx_buffer_state*,int ) ;
 int pci_unmap_page (struct pci_dev*,int,int,int ) ;

__attribute__((used)) static inline void
myri10ge_unmap_rx_page(struct pci_dev *pdev,
         struct myri10ge_rx_buffer_state *info, int bytes)
{

 if (bytes >= MYRI10GE_ALLOC_SIZE / 2 ||
     (info->page_offset + 2 * bytes) > MYRI10GE_ALLOC_SIZE) {
  pci_unmap_page(pdev, (dma_unmap_addr(info, bus)
          & ~(MYRI10GE_ALLOC_SIZE - 1)),
          MYRI10GE_ALLOC_SIZE, PCI_DMA_FROMDEVICE);
 }
}
