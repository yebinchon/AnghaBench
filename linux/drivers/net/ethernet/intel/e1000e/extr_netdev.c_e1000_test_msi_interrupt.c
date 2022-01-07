
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int name; } ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {int flags; TYPE_1__* pdev; int int_mode; struct e1000_hw hw; struct net_device* netdev; } ;
struct TYPE_3__ {int irq; } ;


 int E1000E_INT_MODE_LEGACY ;
 int E1000_ICS_RXSEQ ;
 int FLAG_MSI_TEST_FAILED ;
 int ICR ;
 int ICS ;
 int e1000_free_irq (struct e1000_adapter*) ;
 int e1000_intr_msi_test ;
 int e1000_irq_disable (struct e1000_adapter*) ;
 int e1000_irq_enable (struct e1000_adapter*) ;
 int e1000_request_irq (struct e1000_adapter*) ;
 int e1000e_reset_interrupt_capability (struct e1000_adapter*) ;
 int e1000e_set_interrupt_capability (struct e1000_adapter*) ;
 int e1e_flush () ;
 int e_dbg (char*) ;
 int e_info (char*) ;
 int er32 (int ) ;
 int ew32 (int ,int ) ;
 int free_irq (int ,struct net_device*) ;
 int msleep (int) ;
 int pci_disable_msi (TYPE_1__*) ;
 int pci_enable_msi (TYPE_1__*) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;
 int rmb () ;
 int wmb () ;

__attribute__((used)) static int e1000_test_msi_interrupt(struct e1000_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 struct e1000_hw *hw = &adapter->hw;
 int err;



 er32(ICR);


 e1000_free_irq(adapter);
 e1000e_reset_interrupt_capability(adapter);




 adapter->flags |= FLAG_MSI_TEST_FAILED;

 err = pci_enable_msi(adapter->pdev);
 if (err)
  goto msi_test_failed;

 err = request_irq(adapter->pdev->irq, e1000_intr_msi_test, 0,
     netdev->name, netdev);
 if (err) {
  pci_disable_msi(adapter->pdev);
  goto msi_test_failed;
 }




 wmb();

 e1000_irq_enable(adapter);


 ew32(ICS, E1000_ICS_RXSEQ);
 e1e_flush();
 msleep(100);

 e1000_irq_disable(adapter);

 rmb();

 if (adapter->flags & FLAG_MSI_TEST_FAILED) {
  adapter->int_mode = E1000E_INT_MODE_LEGACY;
  e_info("MSI interrupt test failed, using legacy interrupt.\n");
 } else {
  e_dbg("MSI interrupt test succeeded!\n");
 }

 free_irq(adapter->pdev->irq, netdev);
 pci_disable_msi(adapter->pdev);

msi_test_failed:
 e1000e_set_interrupt_capability(adapter);
 return e1000_request_irq(adapter);
}
