
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct fm10k_rx_buffer {int page_offset; int dma; } ;
struct fm10k_ring {size_t next_to_alloc; size_t count; int dev; struct fm10k_rx_buffer* rx_buffer; } ;


 int DMA_FROM_DEVICE ;
 int FM10K_RX_BUFSZ ;
 int dma_sync_single_range_for_device (int ,int ,int ,int ,int ) ;

__attribute__((used)) static void fm10k_reuse_rx_page(struct fm10k_ring *rx_ring,
    struct fm10k_rx_buffer *old_buff)
{
 struct fm10k_rx_buffer *new_buff;
 u16 nta = rx_ring->next_to_alloc;

 new_buff = &rx_ring->rx_buffer[nta];


 nta++;
 rx_ring->next_to_alloc = (nta < rx_ring->count) ? nta : 0;


 *new_buff = *old_buff;


 dma_sync_single_range_for_device(rx_ring->dev, old_buff->dma,
      old_buff->page_offset,
      FM10K_RX_BUFSZ,
      DMA_FROM_DEVICE);
}
