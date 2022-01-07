
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmxnet3_adapter {int num_rx_queues; int * rx_queue; } ;


 int vmxnet3_rq_cleanup (int *,struct vmxnet3_adapter*) ;

__attribute__((used)) static void
vmxnet3_rq_cleanup_all(struct vmxnet3_adapter *adapter)
{
 int i;

 for (i = 0; i < adapter->num_rx_queues; i++)
  vmxnet3_rq_cleanup(&adapter->rx_queue[i], adapter);
}
