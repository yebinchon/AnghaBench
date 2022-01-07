
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igb_rx_buffer {int pagecnt_bias; int page_offset; int dma; int page; } ;
struct igb_ring {size_t next_to_clean; int dev; struct igb_rx_buffer* rx_buffer_info; } ;


 int DMA_FROM_DEVICE ;
 int dma_sync_single_range_for_cpu (int ,int ,int ,unsigned int const,int ) ;
 int prefetchw (int ) ;

__attribute__((used)) static struct igb_rx_buffer *igb_get_rx_buffer(struct igb_ring *rx_ring,
            const unsigned int size)
{
 struct igb_rx_buffer *rx_buffer;

 rx_buffer = &rx_ring->rx_buffer_info[rx_ring->next_to_clean];
 prefetchw(rx_buffer->page);


 dma_sync_single_range_for_cpu(rx_ring->dev,
          rx_buffer->dma,
          rx_buffer->page_offset,
          size,
          DMA_FROM_DEVICE);

 rx_buffer->pagecnt_bias--;

 return rx_buffer;
}
