
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct ena_rx_buffer {scalar_t__ page; } ;
struct ena_ring {size_t ring_size; struct ena_rx_buffer* rx_buffer_info; } ;
struct ena_adapter {struct ena_ring* rx_ring; } ;


 int ena_free_rx_page (struct ena_ring*,struct ena_rx_buffer*) ;

__attribute__((used)) static void ena_free_rx_bufs(struct ena_adapter *adapter,
        u32 qid)
{
 struct ena_ring *rx_ring = &adapter->rx_ring[qid];
 u32 i;

 for (i = 0; i < rx_ring->ring_size; i++) {
  struct ena_rx_buffer *rx_info = &rx_ring->rx_buffer_info[i];

  if (rx_info->page)
   ena_free_rx_page(rx_ring, rx_info);
 }
}
