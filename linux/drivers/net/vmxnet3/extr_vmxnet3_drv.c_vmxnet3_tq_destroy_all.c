
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmxnet3_adapter {int num_tx_queues; int * tx_queue; } ;


 int vmxnet3_tq_destroy (int *,struct vmxnet3_adapter*) ;

void
vmxnet3_tq_destroy_all(struct vmxnet3_adapter *adapter)
{
 int i;

 for (i = 0; i < adapter->num_tx_queues; i++)
  vmxnet3_tq_destroy(&adapter->tx_queue[i], adapter);
}
