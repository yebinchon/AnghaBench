
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_rx_buffer {int dma; } ;
struct i40e_ring {size_t next_to_clean; int dev; struct i40e_rx_buffer* rx_bi; } ;


 int DMA_BIDIRECTIONAL ;
 int dma_sync_single_range_for_cpu (int ,int ,int ,unsigned int const,int ) ;

__attribute__((used)) static struct i40e_rx_buffer *i40e_get_rx_buffer_zc(struct i40e_ring *rx_ring,
          const unsigned int size)
{
 struct i40e_rx_buffer *bi;

 bi = &rx_ring->rx_bi[rx_ring->next_to_clean];


 dma_sync_single_range_for_cpu(rx_ring->dev,
          bi->dma, 0,
          size,
          DMA_BIDIRECTIONAL);

 return bi;
}
