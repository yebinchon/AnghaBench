
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct page {int dummy; } ;
struct gfar_rx_buff {int page_offset; struct page* page; int dma; } ;
struct gfar_priv_rx_q {size_t next_to_clean; int dev; struct gfar_rx_buff* rx_buff; } ;


 int DMA_FROM_DEVICE ;
 int GFAR_RXB_TRUESIZE ;
 int GFAR_SKBFRAG_SIZE ;
 int PAGE_SIZE ;
 int RXBUF_ALIGNMENT ;
 struct sk_buff* build_skb (void*,int ) ;
 int dma_sync_single_range_for_cpu (int ,int ,int,int ,int ) ;
 int dma_unmap_page (int ,int ,int ,int ) ;
 scalar_t__ gfar_add_rx_frag (struct gfar_rx_buff*,int ,struct sk_buff*,int) ;
 int gfar_reuse_rx_page (struct gfar_priv_rx_q*,struct gfar_rx_buff*) ;
 int gfar_rx_alloc_err (struct gfar_priv_rx_q*) ;
 scalar_t__ likely (int) ;
 void* page_address (struct page*) ;
 int skb_reserve (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *gfar_get_next_rxbuff(struct gfar_priv_rx_q *rx_queue,
         u32 lstatus, struct sk_buff *skb)
{
 struct gfar_rx_buff *rxb = &rx_queue->rx_buff[rx_queue->next_to_clean];
 struct page *page = rxb->page;
 bool first = 0;

 if (likely(!skb)) {
  void *buff_addr = page_address(page) + rxb->page_offset;

  skb = build_skb(buff_addr, GFAR_SKBFRAG_SIZE);
  if (unlikely(!skb)) {
   gfar_rx_alloc_err(rx_queue);
   return ((void*)0);
  }
  skb_reserve(skb, RXBUF_ALIGNMENT);
  first = 1;
 }

 dma_sync_single_range_for_cpu(rx_queue->dev, rxb->dma, rxb->page_offset,
          GFAR_RXB_TRUESIZE, DMA_FROM_DEVICE);

 if (gfar_add_rx_frag(rxb, lstatus, skb, first)) {

  gfar_reuse_rx_page(rx_queue, rxb);
 } else {

  dma_unmap_page(rx_queue->dev, rxb->dma,
          PAGE_SIZE, DMA_FROM_DEVICE);
 }


 rxb->page = ((void*)0);

 return skb;
}
