
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbevf_adapter {scalar_t__ num_rx_queues; scalar_t__ num_xdp_queues; scalar_t__ num_tx_queues; } ;


 int ixgbevf_free_q_vectors (struct ixgbevf_adapter*) ;
 int ixgbevf_reset_interrupt_capability (struct ixgbevf_adapter*) ;

__attribute__((used)) static void ixgbevf_clear_interrupt_scheme(struct ixgbevf_adapter *adapter)
{
 adapter->num_tx_queues = 0;
 adapter->num_xdp_queues = 0;
 adapter->num_rx_queues = 0;

 ixgbevf_free_q_vectors(adapter);
 ixgbevf_reset_interrupt_capability(adapter);
}
