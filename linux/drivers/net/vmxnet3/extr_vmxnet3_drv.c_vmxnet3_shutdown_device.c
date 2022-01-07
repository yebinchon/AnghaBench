
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmxnet3_adapter {int state; int cmd_lock; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;


 int VMXNET3_CMD_QUIESCE_DEV ;
 int VMXNET3_REG_CMD ;
 int VMXNET3_STATE_BIT_QUIESCED ;
 int VMXNET3_STATE_BIT_RESETTING ;
 int VMXNET3_WRITE_BAR1_REG (struct vmxnet3_adapter*,int ,int ) ;
 int clear_bit (int ,int *) ;
 struct vmxnet3_adapter* netdev_priv (struct net_device*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int usleep_range (int,int) ;
 int vmxnet3_disable_all_intrs (struct vmxnet3_adapter*) ;

__attribute__((used)) static void vmxnet3_shutdown_device(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct vmxnet3_adapter *adapter = netdev_priv(netdev);
 unsigned long flags;




 while (test_and_set_bit(VMXNET3_STATE_BIT_RESETTING, &adapter->state))
  usleep_range(1000, 2000);

 if (test_and_set_bit(VMXNET3_STATE_BIT_QUIESCED,
        &adapter->state)) {
  clear_bit(VMXNET3_STATE_BIT_RESETTING, &adapter->state);
  return;
 }
 spin_lock_irqsave(&adapter->cmd_lock, flags);
 VMXNET3_WRITE_BAR1_REG(adapter, VMXNET3_REG_CMD,
          VMXNET3_CMD_QUIESCE_DEV);
 spin_unlock_irqrestore(&adapter->cmd_lock, flags);
 vmxnet3_disable_all_intrs(adapter);

 clear_bit(VMXNET3_STATE_BIT_RESETTING, &adapter->state);
}
