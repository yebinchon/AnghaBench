
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igc_rx_buffer {int * page; int pagecnt_bias; int dma; } ;
struct igc_ring {int dev; } ;


 int DMA_FROM_DEVICE ;
 int IGC_RX_DMA_ATTR ;
 int __page_frag_cache_drain (int *,int ) ;
 int dma_unmap_page_attrs (int ,int ,int ,int ,int ) ;
 scalar_t__ igc_can_reuse_rx_page (struct igc_rx_buffer*) ;
 int igc_reuse_rx_page (struct igc_ring*,struct igc_rx_buffer*) ;
 int igc_rx_pg_size (struct igc_ring*) ;

__attribute__((used)) static void igc_put_rx_buffer(struct igc_ring *rx_ring,
         struct igc_rx_buffer *rx_buffer)
{
 if (igc_can_reuse_rx_page(rx_buffer)) {

  igc_reuse_rx_page(rx_ring, rx_buffer);
 } else {



  dma_unmap_page_attrs(rx_ring->dev, rx_buffer->dma,
         igc_rx_pg_size(rx_ring), DMA_FROM_DEVICE,
         IGC_RX_DMA_ATTR);
  __page_frag_cache_drain(rx_buffer->page,
     rx_buffer->pagecnt_bias);
 }


 rx_buffer->page = ((void*)0);
}
