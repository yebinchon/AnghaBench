
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct igb_rx_buffer {int pagecnt_bias; int page; int dma; int page_offset; } ;
struct igb_ring {size_t next_to_clean; size_t next_to_alloc; size_t count; scalar_t__ next_to_use; int dev; struct igb_rx_buffer* rx_buffer_info; int * skb; } ;


 int DMA_FROM_DEVICE ;
 int IGB_RX_DMA_ATTR ;
 int __page_frag_cache_drain (int ,int ) ;
 int dev_kfree_skb (int *) ;
 int dma_sync_single_range_for_cpu (int ,int ,int ,int ,int ) ;
 int dma_unmap_page_attrs (int ,int ,int ,int ,int ) ;
 int igb_rx_bufsz (struct igb_ring*) ;
 int igb_rx_pg_size (struct igb_ring*) ;

__attribute__((used)) static void igb_clean_rx_ring(struct igb_ring *rx_ring)
{
 u16 i = rx_ring->next_to_clean;

 dev_kfree_skb(rx_ring->skb);
 rx_ring->skb = ((void*)0);


 while (i != rx_ring->next_to_alloc) {
  struct igb_rx_buffer *buffer_info = &rx_ring->rx_buffer_info[i];




  dma_sync_single_range_for_cpu(rx_ring->dev,
           buffer_info->dma,
           buffer_info->page_offset,
           igb_rx_bufsz(rx_ring),
           DMA_FROM_DEVICE);


  dma_unmap_page_attrs(rx_ring->dev,
         buffer_info->dma,
         igb_rx_pg_size(rx_ring),
         DMA_FROM_DEVICE,
         IGB_RX_DMA_ATTR);
  __page_frag_cache_drain(buffer_info->page,
     buffer_info->pagecnt_bias);

  i++;
  if (i == rx_ring->count)
   i = 0;
 }

 rx_ring->next_to_alloc = 0;
 rx_ring->next_to_clean = 0;
 rx_ring->next_to_use = 0;
}
