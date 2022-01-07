
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct ixgbevf_rx_buffer {int pagecnt_bias; int page; int dma; int page_offset; } ;
struct ixgbevf_ring {size_t next_to_clean; size_t next_to_alloc; size_t count; scalar_t__ next_to_use; int dev; struct ixgbevf_rx_buffer* rx_buffer_info; int * skb; } ;


 int DMA_FROM_DEVICE ;
 int IXGBEVF_RX_DMA_ATTR ;
 int __page_frag_cache_drain (int ,int ) ;
 int dev_kfree_skb (int *) ;
 int dma_sync_single_range_for_cpu (int ,int ,int ,int ,int ) ;
 int dma_unmap_page_attrs (int ,int ,int ,int ,int ) ;
 int ixgbevf_rx_bufsz (struct ixgbevf_ring*) ;
 int ixgbevf_rx_pg_size (struct ixgbevf_ring*) ;

__attribute__((used)) static void ixgbevf_clean_rx_ring(struct ixgbevf_ring *rx_ring)
{
 u16 i = rx_ring->next_to_clean;


 if (rx_ring->skb) {
  dev_kfree_skb(rx_ring->skb);
  rx_ring->skb = ((void*)0);
 }


 while (i != rx_ring->next_to_alloc) {
  struct ixgbevf_rx_buffer *rx_buffer;

  rx_buffer = &rx_ring->rx_buffer_info[i];




  dma_sync_single_range_for_cpu(rx_ring->dev,
           rx_buffer->dma,
           rx_buffer->page_offset,
           ixgbevf_rx_bufsz(rx_ring),
           DMA_FROM_DEVICE);


  dma_unmap_page_attrs(rx_ring->dev,
         rx_buffer->dma,
         ixgbevf_rx_pg_size(rx_ring),
         DMA_FROM_DEVICE,
         IXGBEVF_RX_DMA_ATTR);

  __page_frag_cache_drain(rx_buffer->page,
     rx_buffer->pagecnt_bias);

  i++;
  if (i == rx_ring->count)
   i = 0;
 }

 rx_ring->next_to_alloc = 0;
 rx_ring->next_to_clean = 0;
 rx_ring->next_to_use = 0;
}
