
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct vmxnet3_adapter {int num_tx_queues; int txdata_desc_size; int rxdata_desc_size; int rx_ring2_size; int rx_ring_size; int tx_ring_size; int cmd_lock; TYPE_1__* tx_queue; } ;
struct net_device {int dummy; } ;
struct Vmxnet3_TxDataDesc {int dummy; } ;
struct TYPE_2__ {int tx_lock; } ;


 int VMXNET3_CMD_GET_TXDATA_DESC_SIZE ;
 int VMXNET3_READ_BAR1_REG (struct vmxnet3_adapter*,int ) ;
 int VMXNET3_REG_CMD ;
 int VMXNET3_TXDATA_DESC_MAX_SIZE ;
 int VMXNET3_TXDATA_DESC_MIN_SIZE ;
 int VMXNET3_TXDATA_DESC_SIZE_MASK ;
 scalar_t__ VMXNET3_VERSION_GE_3 (struct vmxnet3_adapter*) ;
 int VMXNET3_WRITE_BAR1_REG (struct vmxnet3_adapter*,int ,int ) ;
 struct vmxnet3_adapter* netdev_priv (struct net_device*) ;
 int spin_lock_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vmxnet3_activate_dev (struct vmxnet3_adapter*) ;
 int vmxnet3_create_queues (struct vmxnet3_adapter*,int ,int ,int ,int,int ) ;
 int vmxnet3_rq_destroy_all (struct vmxnet3_adapter*) ;
 int vmxnet3_tq_destroy_all (struct vmxnet3_adapter*) ;

__attribute__((used)) static int
vmxnet3_open(struct net_device *netdev)
{
 struct vmxnet3_adapter *adapter;
 int err, i;

 adapter = netdev_priv(netdev);

 for (i = 0; i < adapter->num_tx_queues; i++)
  spin_lock_init(&adapter->tx_queue[i].tx_lock);

 if (VMXNET3_VERSION_GE_3(adapter)) {
  unsigned long flags;
  u16 txdata_desc_size;

  spin_lock_irqsave(&adapter->cmd_lock, flags);
  VMXNET3_WRITE_BAR1_REG(adapter, VMXNET3_REG_CMD,
           VMXNET3_CMD_GET_TXDATA_DESC_SIZE);
  txdata_desc_size = VMXNET3_READ_BAR1_REG(adapter,
        VMXNET3_REG_CMD);
  spin_unlock_irqrestore(&adapter->cmd_lock, flags);

  if ((txdata_desc_size < VMXNET3_TXDATA_DESC_MIN_SIZE) ||
      (txdata_desc_size > VMXNET3_TXDATA_DESC_MAX_SIZE) ||
      (txdata_desc_size & VMXNET3_TXDATA_DESC_SIZE_MASK)) {
   adapter->txdata_desc_size =
    sizeof(struct Vmxnet3_TxDataDesc);
  } else {
   adapter->txdata_desc_size = txdata_desc_size;
  }
 } else {
  adapter->txdata_desc_size = sizeof(struct Vmxnet3_TxDataDesc);
 }

 err = vmxnet3_create_queues(adapter,
        adapter->tx_ring_size,
        adapter->rx_ring_size,
        adapter->rx_ring2_size,
        adapter->txdata_desc_size,
        adapter->rxdata_desc_size);
 if (err)
  goto queue_err;

 err = vmxnet3_activate_dev(adapter);
 if (err)
  goto activate_err;

 return 0;

activate_err:
 vmxnet3_rq_destroy_all(adapter);
 vmxnet3_tq_destroy_all(adapter);
queue_err:
 return err;
}
