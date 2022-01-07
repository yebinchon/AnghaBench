
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct lan743x_adapter {int dummy; } ;


 int lan743x_hardware_cleanup (struct lan743x_adapter*) ;
 int lan743x_netdev_close (struct net_device*) ;
 struct lan743x_adapter* netdev_priv (struct net_device*) ;
 int netif_device_detach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static void lan743x_pcidev_shutdown(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct lan743x_adapter *adapter = netdev_priv(netdev);

 rtnl_lock();
 netif_device_detach(netdev);





 if (netif_running(netdev))
  lan743x_netdev_close(netdev);
 rtnl_unlock();






 lan743x_hardware_cleanup(adapter);
}
