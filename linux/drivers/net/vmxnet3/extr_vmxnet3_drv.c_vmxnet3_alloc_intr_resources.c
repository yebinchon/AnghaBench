
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int type; int mask_mode; int num_intrs; TYPE_1__* msix_entries; } ;
struct vmxnet3_adapter {scalar_t__ share_intr; int num_tx_queues; int num_rx_queues; TYPE_2__ intr; TYPE_4__* netdev; TYPE_3__* pdev; int cmd_lock; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_5__ {int entry; } ;


 int VMXNET3_CMD_GET_CONF_INTR ;
 scalar_t__ VMXNET3_INTR_BUDDYSHARE ;
 scalar_t__ VMXNET3_INTR_TXSHARE ;
 int VMXNET3_IT_AUTO ;
 int VMXNET3_IT_INTX ;
 int VMXNET3_IT_MSI ;
 int VMXNET3_IT_MSIX ;
 int VMXNET3_LINUX_MIN_MSIX_VECT ;
 int VMXNET3_READ_BAR1_REG (struct vmxnet3_adapter*,int ) ;
 int VMXNET3_REG_CMD ;
 int VMXNET3_WRITE_BAR1_REG (struct vmxnet3_adapter*,int ,int ) ;
 int dev_info (int *,char*,...) ;
 int netdev_err (TYPE_4__*,char*) ;
 int pci_enable_msi (TYPE_3__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vmxnet3_acquire_msix_vectors (struct vmxnet3_adapter*,int) ;

__attribute__((used)) static void
vmxnet3_alloc_intr_resources(struct vmxnet3_adapter *adapter)
{
 u32 cfg;
 unsigned long flags;


 spin_lock_irqsave(&adapter->cmd_lock, flags);
 VMXNET3_WRITE_BAR1_REG(adapter, VMXNET3_REG_CMD,
          VMXNET3_CMD_GET_CONF_INTR);
 cfg = VMXNET3_READ_BAR1_REG(adapter, VMXNET3_REG_CMD);
 spin_unlock_irqrestore(&adapter->cmd_lock, flags);
 adapter->intr.type = cfg & 0x3;
 adapter->intr.mask_mode = (cfg >> 2) & 0x3;

 if (adapter->intr.type == VMXNET3_IT_AUTO) {
  adapter->intr.type = VMXNET3_IT_MSIX;
 }
 adapter->num_rx_queues = 1;
 dev_info(&adapter->netdev->dev,
   "Using INTx interrupt, #Rx queues: 1.\n");
 adapter->intr.type = VMXNET3_IT_INTX;


 adapter->intr.num_intrs = 1;
}
