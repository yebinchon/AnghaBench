
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {int hw_addr; } ;
struct ixgbe_adapter {TYPE_1__ hw; int io_addr; int state; } ;
typedef int pci_ers_result_t ;


 int IXGBE_WRITE_REG (TYPE_1__*,int ,int ) ;
 int IXGBE_WUS ;
 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_RECOVERED ;
 int __IXGBE_DISABLED ;
 int clear_bit (int ,int *) ;
 int e_err (int ,char*) ;
 int ixgbe_reset (struct ixgbe_adapter*) ;
 scalar_t__ pci_enable_device_mem (struct pci_dev*) ;
 struct ixgbe_adapter* pci_get_drvdata (struct pci_dev*) ;
 int pci_restore_state (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 int pci_wake_from_d3 (struct pci_dev*,int) ;
 int probe ;
 int smp_mb__before_atomic () ;

__attribute__((used)) static pci_ers_result_t ixgbe_io_slot_reset(struct pci_dev *pdev)
{
 struct ixgbe_adapter *adapter = pci_get_drvdata(pdev);
 pci_ers_result_t result;

 if (pci_enable_device_mem(pdev)) {
  e_err(probe, "Cannot re-enable PCI device after reset.\n");
  result = PCI_ERS_RESULT_DISCONNECT;
 } else {
  smp_mb__before_atomic();
  clear_bit(__IXGBE_DISABLED, &adapter->state);
  adapter->hw.hw_addr = adapter->io_addr;
  pci_set_master(pdev);
  pci_restore_state(pdev);
  pci_save_state(pdev);

  pci_wake_from_d3(pdev, 0);

  ixgbe_reset(adapter);
  IXGBE_WRITE_REG(&adapter->hw, IXGBE_WUS, ~0);
  result = PCI_ERS_RESULT_RECOVERED;
 }

 return result;
}
