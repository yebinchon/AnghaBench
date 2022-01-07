
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct ena_ring {int * free_ids; int * rx_buffer_info; } ;
struct ena_adapter {struct ena_ring* rx_ring; } ;


 int vfree (int *) ;

__attribute__((used)) static void ena_free_rx_resources(struct ena_adapter *adapter,
      u32 qid)
{
 struct ena_ring *rx_ring = &adapter->rx_ring[qid];

 vfree(rx_ring->rx_buffer_info);
 rx_ring->rx_buffer_info = ((void*)0);

 vfree(rx_ring->free_ids);
 rx_ring->free_ids = ((void*)0);
}
