
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_ring {int * push_buf_intermediate_buf; int * free_ids; int * tx_buffer_info; } ;
struct ena_adapter {struct ena_ring* tx_ring; } ;


 int vfree (int *) ;

__attribute__((used)) static void ena_free_tx_resources(struct ena_adapter *adapter, int qid)
{
 struct ena_ring *tx_ring = &adapter->tx_ring[qid];

 vfree(tx_ring->tx_buffer_info);
 tx_ring->tx_buffer_info = ((void*)0);

 vfree(tx_ring->free_ids);
 tx_ring->free_ids = ((void*)0);

 vfree(tx_ring->push_buf_intermediate_buf);
 tx_ring->push_buf_intermediate_buf = ((void*)0);
}
