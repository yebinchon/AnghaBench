
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_rx_buffer {int pagecnt_bias; int page_offset; int dma; int page; } ;
struct i40e_ring {size_t next_to_clean; int dev; struct i40e_rx_buffer* rx_bi; } ;


 int DMA_FROM_DEVICE ;
 int dma_sync_single_range_for_cpu (int ,int ,int ,unsigned int const,int ) ;
 int prefetchw (int ) ;

__attribute__((used)) static struct i40e_rx_buffer *i40e_get_rx_buffer(struct i40e_ring *rx_ring,
       const unsigned int size)
{
 struct i40e_rx_buffer *rx_buffer;

 rx_buffer = &rx_ring->rx_bi[rx_ring->next_to_clean];
 prefetchw(rx_buffer->page);


 dma_sync_single_range_for_cpu(rx_ring->dev,
          rx_buffer->dma,
          rx_buffer->page_offset,
          size,
          DMA_FROM_DEVICE);


 rx_buffer->pagecnt_bias--;

 return rx_buffer;
}
