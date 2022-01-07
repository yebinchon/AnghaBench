
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmxnet3_adapter {int num_rx_queues; int netdev; scalar_t__ link_speed; TYPE_1__* rx_queue; int cmd_lock; int state; } ;
struct TYPE_2__ {int napi; } ;


 int VMXNET3_CMD_QUIESCE_DEV ;
 int VMXNET3_REG_CMD ;
 int VMXNET3_STATE_BIT_QUIESCED ;
 int VMXNET3_WRITE_BAR1_REG (struct vmxnet3_adapter*,int ,int ) ;
 int napi_disable (int *) ;
 int netif_carrier_off (int ) ;
 int netif_tx_disable (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int vmxnet3_disable_all_intrs (struct vmxnet3_adapter*) ;
 int vmxnet3_free_irqs (struct vmxnet3_adapter*) ;
 int vmxnet3_rq_cleanup_all (struct vmxnet3_adapter*) ;
 int vmxnet3_tq_cleanup_all (struct vmxnet3_adapter*) ;

int
vmxnet3_quiesce_dev(struct vmxnet3_adapter *adapter)
{
 int i;
 unsigned long flags;
 if (test_and_set_bit(VMXNET3_STATE_BIT_QUIESCED, &adapter->state))
  return 0;


 spin_lock_irqsave(&adapter->cmd_lock, flags);
 VMXNET3_WRITE_BAR1_REG(adapter, VMXNET3_REG_CMD,
          VMXNET3_CMD_QUIESCE_DEV);
 spin_unlock_irqrestore(&adapter->cmd_lock, flags);
 vmxnet3_disable_all_intrs(adapter);

 for (i = 0; i < adapter->num_rx_queues; i++)
  napi_disable(&adapter->rx_queue[i].napi);
 netif_tx_disable(adapter->netdev);
 adapter->link_speed = 0;
 netif_carrier_off(adapter->netdev);

 vmxnet3_tq_cleanup_all(adapter);
 vmxnet3_rq_cleanup_all(adapter);
 vmxnet3_free_irqs(adapter);
 return 0;
}
