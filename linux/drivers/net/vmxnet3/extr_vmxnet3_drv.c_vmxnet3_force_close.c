
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmxnet3_adapter {int num_rx_queues; int netdev; int state; TYPE_1__* rx_queue; } ;
struct TYPE_2__ {int napi; } ;


 int BUG_ON (int ) ;
 int VMXNET3_STATE_BIT_QUIESCED ;
 int VMXNET3_STATE_BIT_RESETTING ;
 int clear_bit (int ,int *) ;
 int dev_close (int ) ;
 int napi_enable (int *) ;
 int test_bit (int ,int *) ;

void
vmxnet3_force_close(struct vmxnet3_adapter *adapter)
{
 int i;





 BUG_ON(test_bit(VMXNET3_STATE_BIT_RESETTING, &adapter->state));


 for (i = 0; i < adapter->num_rx_queues; i++)
  napi_enable(&adapter->rx_queue[i].napi);




 clear_bit(VMXNET3_STATE_BIT_QUIESCED, &adapter->state);
 dev_close(adapter->netdev);
}
