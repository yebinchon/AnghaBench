
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ice_rx_buf {int * skb; int * page; int pagecnt_bias; int dma; } ;
struct TYPE_2__ {int page_reuse_count; } ;
struct ice_ring {int dev; TYPE_1__ rx_stats; } ;


 int DMA_FROM_DEVICE ;
 int ICE_RX_DMA_ATTR ;
 int PAGE_SIZE ;
 int __page_frag_cache_drain (int *,int ) ;
 int dma_unmap_page_attrs (int ,int ,int ,int ,int ) ;
 scalar_t__ ice_can_reuse_rx_page (struct ice_rx_buf*) ;
 int ice_reuse_rx_page (struct ice_ring*,struct ice_rx_buf*) ;

__attribute__((used)) static void ice_put_rx_buf(struct ice_ring *rx_ring, struct ice_rx_buf *rx_buf)
{
 if (!rx_buf)
  return;

 if (ice_can_reuse_rx_page(rx_buf)) {

  ice_reuse_rx_page(rx_ring, rx_buf);
  rx_ring->rx_stats.page_reuse_count++;
 } else {

  dma_unmap_page_attrs(rx_ring->dev, rx_buf->dma, PAGE_SIZE,
         DMA_FROM_DEVICE, ICE_RX_DMA_ATTR);
  __page_frag_cache_drain(rx_buf->page, rx_buf->pagecnt_bias);
 }


 rx_buf->page = ((void*)0);
 rx_buf->skb = ((void*)0);
}
