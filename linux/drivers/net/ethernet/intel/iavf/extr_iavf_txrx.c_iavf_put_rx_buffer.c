
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iavf_rx_buffer {int * page; int pagecnt_bias; int dma; } ;
struct TYPE_2__ {int page_reuse_count; } ;
struct iavf_ring {int dev; TYPE_1__ rx_stats; } ;


 int DMA_FROM_DEVICE ;
 int IAVF_RX_DMA_ATTR ;
 int __page_frag_cache_drain (int *,int ) ;
 int dma_unmap_page_attrs (int ,int ,int ,int ,int ) ;
 scalar_t__ iavf_can_reuse_rx_page (struct iavf_rx_buffer*) ;
 int iavf_reuse_rx_page (struct iavf_ring*,struct iavf_rx_buffer*) ;
 int iavf_rx_pg_size (struct iavf_ring*) ;

__attribute__((used)) static void iavf_put_rx_buffer(struct iavf_ring *rx_ring,
          struct iavf_rx_buffer *rx_buffer)
{
 if (!rx_buffer)
  return;

 if (iavf_can_reuse_rx_page(rx_buffer)) {

  iavf_reuse_rx_page(rx_ring, rx_buffer);
  rx_ring->rx_stats.page_reuse_count++;
 } else {

  dma_unmap_page_attrs(rx_ring->dev, rx_buffer->dma,
         iavf_rx_pg_size(rx_ring),
         DMA_FROM_DEVICE, IAVF_RX_DMA_ATTR);
  __page_frag_cache_drain(rx_buffer->page,
     rx_buffer->pagecnt_bias);
 }


 rx_buffer->page = ((void*)0);
}
