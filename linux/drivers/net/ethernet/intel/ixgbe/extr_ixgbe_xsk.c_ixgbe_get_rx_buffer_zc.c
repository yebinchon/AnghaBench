
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_rx_buffer {int dma; } ;
struct ixgbe_ring {size_t next_to_clean; int dev; struct ixgbe_rx_buffer* rx_buffer_info; } ;


 int DMA_BIDIRECTIONAL ;
 int dma_sync_single_range_for_cpu (int ,int ,int ,unsigned int,int ) ;

__attribute__((used)) static struct
ixgbe_rx_buffer *ixgbe_get_rx_buffer_zc(struct ixgbe_ring *rx_ring,
     unsigned int size)
{
 struct ixgbe_rx_buffer *bi;

 bi = &rx_ring->rx_buffer_info[rx_ring->next_to_clean];


 dma_sync_single_range_for_cpu(rx_ring->dev,
          bi->dma, 0,
          size,
          DMA_BIDIRECTIONAL);

 return bi;
}
