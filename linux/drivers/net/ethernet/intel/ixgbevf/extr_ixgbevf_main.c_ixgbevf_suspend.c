
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct ixgbevf_adapter {int state; } ;
typedef int pm_message_t ;


 int __IXGBEVF_DISABLED ;
 int ixgbevf_clear_interrupt_scheme (struct ixgbevf_adapter*) ;
 int ixgbevf_close_suspend (struct ixgbevf_adapter*) ;
 struct ixgbevf_adapter* netdev_priv (struct net_device*) ;
 int netif_device_detach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static int ixgbevf_suspend(struct pci_dev *pdev, pm_message_t state)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct ixgbevf_adapter *adapter = netdev_priv(netdev);




 rtnl_lock();
 netif_device_detach(netdev);

 if (netif_running(netdev))
  ixgbevf_close_suspend(adapter);

 ixgbevf_clear_interrupt_scheme(adapter);
 rtnl_unlock();







 if (!test_and_set_bit(__IXGBEVF_DISABLED, &adapter->state))
  pci_disable_device(pdev);

 return 0;
}
