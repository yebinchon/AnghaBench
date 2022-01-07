
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct igbvf_adapter {int dummy; } ;
typedef int pci_ers_result_t ;
typedef scalar_t__ pci_channel_state_t ;


 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_NEED_RESET ;
 int igbvf_down (struct igbvf_adapter*) ;
 struct igbvf_adapter* netdev_priv (struct net_device*) ;
 int netif_device_detach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 scalar_t__ pci_channel_io_perm_failure ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static pci_ers_result_t igbvf_io_error_detected(struct pci_dev *pdev,
      pci_channel_state_t state)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct igbvf_adapter *adapter = netdev_priv(netdev);

 netif_device_detach(netdev);

 if (state == pci_channel_io_perm_failure)
  return PCI_ERS_RESULT_DISCONNECT;

 if (netif_running(netdev))
  igbvf_down(adapter);
 pci_disable_device(pdev);


 return PCI_ERS_RESULT_NEED_RESET;
}
