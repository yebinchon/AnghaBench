
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct e1000_adapter {int dummy; } ;
typedef int pci_ers_result_t ;
typedef scalar_t__ pci_channel_state_t ;


 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_NEED_RESET ;
 int e1000e_down (struct e1000_adapter*,int) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 int netif_device_detach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 scalar_t__ pci_channel_io_perm_failure ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static pci_ers_result_t e1000_io_error_detected(struct pci_dev *pdev,
      pci_channel_state_t state)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct e1000_adapter *adapter = netdev_priv(netdev);

 netif_device_detach(netdev);

 if (state == pci_channel_io_perm_failure)
  return PCI_ERS_RESULT_DISCONNECT;

 if (netif_running(netdev))
  e1000e_down(adapter, 1);
 pci_disable_device(pdev);


 return PCI_ERS_RESULT_NEED_RESET;
}
