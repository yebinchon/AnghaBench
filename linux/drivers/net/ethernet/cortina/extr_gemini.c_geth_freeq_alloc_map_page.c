
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_2__ {void* buf_adr; } ;
struct gmac_rxdesc {TYPE_1__ word2; } ;
struct gmac_queue_page {struct page* page; void* mapping; } ;
struct gemini_ethernet {int freeq_frag_order; int dev; struct gmac_rxdesc* freeq_ring; struct gmac_queue_page* freeq_pages; } ;
typedef void* dma_addr_t ;


 int DMA_FROM_DEVICE ;
 int GFP_ATOMIC ;
 unsigned int PAGE_SHIFT ;
 int PAGE_SIZE ;
 struct page* alloc_page (int ) ;
 int dev_dbg (int ,char*,int,unsigned int,int,...) ;
 void* dma_map_single (int ,int ,int ,int ) ;
 scalar_t__ dma_mapping_error (int ,void*) ;
 int dma_unmap_single (int ,void*,unsigned int,int ) ;
 int page_address (struct page*) ;
 int put_page (struct page*) ;

__attribute__((used)) static struct page *geth_freeq_alloc_map_page(struct gemini_ethernet *geth,
           int pn)
{
 struct gmac_rxdesc *freeq_entry;
 struct gmac_queue_page *gpage;
 unsigned int fpp_order;
 unsigned int frag_len;
 dma_addr_t mapping;
 struct page *page;
 int i;


 page = alloc_page(GFP_ATOMIC);
 if (!page)
  return ((void*)0);

 mapping = dma_map_single(geth->dev, page_address(page),
     PAGE_SIZE, DMA_FROM_DEVICE);
 if (dma_mapping_error(geth->dev, mapping)) {
  put_page(page);
  return ((void*)0);
 }







 frag_len = 1 << geth->freeq_frag_order;
 fpp_order = PAGE_SHIFT - geth->freeq_frag_order;
 freeq_entry = geth->freeq_ring + (pn << fpp_order);
 dev_dbg(geth->dev, "allocate page %d fragment length %d fragments per page %d, freeq entry %p\n",
   pn, frag_len, (1 << fpp_order), freeq_entry);
 for (i = (1 << fpp_order); i > 0; i--) {
  freeq_entry->word2.buf_adr = mapping;
  freeq_entry++;
  mapping += frag_len;
 }


 gpage = &geth->freeq_pages[pn];
 if (gpage->page) {
  mapping = geth->freeq_ring[pn << fpp_order].word2.buf_adr;
  dma_unmap_single(geth->dev, mapping, frag_len, DMA_FROM_DEVICE);



  put_page(gpage->page);
 }


 dev_dbg(geth->dev, "page %d, DMA addr: %08x, page %p\n",
  pn, (unsigned int)mapping, page);
 gpage->mapping = mapping;
 gpage->page = page;

 return page;
}
