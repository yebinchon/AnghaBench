
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int hw_addr; } ;
struct ixgbevf_adapter {int state; int io_addr; TYPE_1__ hw; } ;
typedef int pci_ers_result_t ;


 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_RECOVERED ;
 int __IXGBEVF_DISABLED ;
 int clear_bit (int ,int *) ;
 int dev_err (int *,char*) ;
 int ixgbevf_reset (struct ixgbevf_adapter*) ;
 struct ixgbevf_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ pci_enable_device_mem (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 int smp_mb__before_atomic () ;

__attribute__((used)) static pci_ers_result_t ixgbevf_io_slot_reset(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct ixgbevf_adapter *adapter = netdev_priv(netdev);

 if (pci_enable_device_mem(pdev)) {
  dev_err(&pdev->dev,
   "Cannot re-enable PCI device after reset.\n");
  return PCI_ERS_RESULT_DISCONNECT;
 }

 adapter->hw.hw_addr = adapter->io_addr;
 smp_mb__before_atomic();
 clear_bit(__IXGBEVF_DISABLED, &adapter->state);
 pci_set_master(pdev);

 ixgbevf_reset(adapter);

 return PCI_ERS_RESULT_RECOVERED;
}
