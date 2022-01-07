
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct myri10ge_rx_buf {int watchdog_needed; int fill_cnt; int cnt; int mask; int page_offset; TYPE_1__* shadow; int * lanai; int bus; TYPE_2__* info; struct page* page; } ;
struct myri10ge_priv {int pdev; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int page_offset; struct page* page; } ;
struct TYPE_3__ {void* addr_high; void* addr_low; } ;


 int GFP_ATOMIC ;
 int MYRI10GE_ALLOC_ORDER ;
 int MYRI10GE_ALLOC_SIZE ;
 scalar_t__ MYRI10GE_HIGHPART_TO_U32 (int ) ;
 scalar_t__ MYRI10GE_LOWPART_TO_U32 (int ) ;
 int PCI_DMA_FROMDEVICE ;
 scalar_t__ SKB_DATA_ALIGN (int) ;
 int __GFP_COMP ;
 int __free_pages (struct page*,int ) ;
 struct page* alloc_pages (int,int ) ;
 int dma_unmap_addr_set (TYPE_2__*,int ,int ) ;
 int get_page (struct page*) ;
 void* htonl (scalar_t__) ;
 int myri10ge_submit_8rx (int *,TYPE_1__*) ;
 int pci_dma_mapping_error (int ,int ) ;
 int pci_map_page (int ,struct page*,int ,int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
myri10ge_alloc_rx_pages(struct myri10ge_priv *mgp, struct myri10ge_rx_buf *rx,
   int bytes, int watchdog)
{
 struct page *page;
 dma_addr_t bus;
 int idx;




 if (unlikely(rx->watchdog_needed && !watchdog))
  return;


 while (rx->fill_cnt != (rx->cnt + rx->mask + 1)) {
  idx = rx->fill_cnt & rx->mask;
  if (rx->page_offset + bytes <= MYRI10GE_ALLOC_SIZE) {

   get_page(rx->page);
  } else {

   page =
       alloc_pages(GFP_ATOMIC | __GFP_COMP,
     MYRI10GE_ALLOC_ORDER);
   if (unlikely(page == ((void*)0))) {
    if (rx->fill_cnt - rx->cnt < 16)
     rx->watchdog_needed = 1;
    return;
   }

   bus = pci_map_page(mgp->pdev, page, 0,
        MYRI10GE_ALLOC_SIZE,
        PCI_DMA_FROMDEVICE);
   if (unlikely(pci_dma_mapping_error(mgp->pdev, bus))) {
    __free_pages(page, MYRI10GE_ALLOC_ORDER);
    if (rx->fill_cnt - rx->cnt < 16)
     rx->watchdog_needed = 1;
    return;
   }

   rx->page = page;
   rx->page_offset = 0;
   rx->bus = bus;

  }
  rx->info[idx].page = rx->page;
  rx->info[idx].page_offset = rx->page_offset;


  dma_unmap_addr_set(&rx->info[idx], bus, rx->bus);
  rx->shadow[idx].addr_low =
      htonl(MYRI10GE_LOWPART_TO_U32(rx->bus) + rx->page_offset);
  rx->shadow[idx].addr_high =
      htonl(MYRI10GE_HIGHPART_TO_U32(rx->bus));


  rx->page_offset += SKB_DATA_ALIGN(bytes);







  rx->fill_cnt++;


  if ((idx & 7) == 7) {
   myri10ge_submit_8rx(&rx->lanai[idx - 7],
         &rx->shadow[idx - 7]);
  }
 }
}
