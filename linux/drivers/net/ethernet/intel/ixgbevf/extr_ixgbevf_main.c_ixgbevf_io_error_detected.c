
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct ixgbevf_adapter {int state; } ;
typedef int pci_ers_result_t ;
typedef scalar_t__ pci_channel_state_t ;


 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_NEED_RESET ;
 int __IXGBEVF_DISABLED ;
 int __IXGBEVF_SERVICE_INITED ;
 int ixgbevf_close_suspend (struct ixgbevf_adapter*) ;
 struct ixgbevf_adapter* netdev_priv (struct net_device*) ;
 int netif_device_detach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 scalar_t__ pci_channel_io_perm_failure ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static pci_ers_result_t ixgbevf_io_error_detected(struct pci_dev *pdev,
        pci_channel_state_t state)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct ixgbevf_adapter *adapter = netdev_priv(netdev);

 if (!test_bit(__IXGBEVF_SERVICE_INITED, &adapter->state))
  return PCI_ERS_RESULT_DISCONNECT;

 rtnl_lock();
 netif_device_detach(netdev);

 if (netif_running(netdev))
  ixgbevf_close_suspend(adapter);

 if (state == pci_channel_io_perm_failure) {
  rtnl_unlock();
  return PCI_ERS_RESULT_DISCONNECT;
 }

 if (!test_and_set_bit(__IXGBEVF_DISABLED, &adapter->state))
  pci_disable_device(pdev);
 rtnl_unlock();


 return PCI_ERS_RESULT_NEED_RESET;
}
