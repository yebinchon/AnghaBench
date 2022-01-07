
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct cas {int page_order; int page_size; int pdev; } ;
struct TYPE_4__ {int buffer; int dma_addr; } ;
typedef TYPE_1__ cas_page_t ;


 int PCI_DMA_FROMDEVICE ;
 int __free_pages (int ,int ) ;
 int kfree (TYPE_1__*) ;
 int pci_unmap_page (int ,int ,int ,int ) ;

__attribute__((used)) static int cas_page_free(struct cas *cp, cas_page_t *page)
{
 pci_unmap_page(cp->pdev, page->dma_addr, cp->page_size,
         PCI_DMA_FROMDEVICE);
 __free_pages(page->buffer, cp->page_order);
 kfree(page);
 return 0;
}
