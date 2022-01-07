
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igc_adapter {int num_q_vectors; scalar_t__ num_rx_queues; scalar_t__ num_tx_queues; } ;


 int igc_free_q_vector (struct igc_adapter*,int) ;
 int igc_reset_q_vector (struct igc_adapter*,int) ;

__attribute__((used)) static void igc_free_q_vectors(struct igc_adapter *adapter)
{
 int v_idx = adapter->num_q_vectors;

 adapter->num_tx_queues = 0;
 adapter->num_rx_queues = 0;
 adapter->num_q_vectors = 0;

 while (v_idx--) {
  igc_reset_q_vector(adapter, v_idx);
  igc_free_q_vector(adapter, v_idx);
 }
}
