
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_host_tx_ring {int * cmd_buf_arr; } ;
struct qlcnic_adapter {int drv_tx_rings; struct qlcnic_host_tx_ring* tx_ring; } ;


 int kfree (struct qlcnic_host_tx_ring*) ;
 int vfree (int *) ;

void qlcnic_free_tx_rings(struct qlcnic_adapter *adapter)
{
 int ring;
 struct qlcnic_host_tx_ring *tx_ring;

 for (ring = 0; ring < adapter->drv_tx_rings; ring++) {
  tx_ring = &adapter->tx_ring[ring];
  if (tx_ring) {
   vfree(tx_ring->cmd_buf_arr);
   tx_ring->cmd_buf_arr = ((void*)0);
  }
 }
 kfree(adapter->tx_ring);
}
