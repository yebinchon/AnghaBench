
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igb_rx_buffer {int * page; int pagecnt_bias; int dma; } ;
struct igb_ring {int dev; } ;


 int DMA_FROM_DEVICE ;
 int IGB_RX_DMA_ATTR ;
 int __page_frag_cache_drain (int *,int ) ;
 int dma_unmap_page_attrs (int ,int ,int ,int ,int ) ;
 scalar_t__ igb_can_reuse_rx_page (struct igb_rx_buffer*) ;
 int igb_reuse_rx_page (struct igb_ring*,struct igb_rx_buffer*) ;
 int igb_rx_pg_size (struct igb_ring*) ;

__attribute__((used)) static void igb_put_rx_buffer(struct igb_ring *rx_ring,
         struct igb_rx_buffer *rx_buffer)
{
 if (igb_can_reuse_rx_page(rx_buffer)) {

  igb_reuse_rx_page(rx_ring, rx_buffer);
 } else {



  dma_unmap_page_attrs(rx_ring->dev, rx_buffer->dma,
         igb_rx_pg_size(rx_ring), DMA_FROM_DEVICE,
         IGB_RX_DMA_ATTR);
  __page_frag_cache_drain(rx_buffer->page,
     rx_buffer->pagecnt_bias);
 }


 rx_buffer->page = ((void*)0);
}
