
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sky2_hw {int ports; struct net_device** dev; } ;
struct pci_dev {int dev; } ;
struct net_device {int dummy; } ;


 int PCI_D3hot ;
 int dev_close (struct net_device*) ;
 int device_may_wakeup (int *) ;
 int netif_device_detach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 struct sky2_hw* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int pci_wake_from_d3 (struct pci_dev*,int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int sky2_suspend (int *) ;

__attribute__((used)) static void sky2_shutdown(struct pci_dev *pdev)
{
 struct sky2_hw *hw = pci_get_drvdata(pdev);
 int port;

 for (port = 0; port < hw->ports; port++) {
  struct net_device *ndev = hw->dev[port];

  rtnl_lock();
  if (netif_running(ndev)) {
   dev_close(ndev);
   netif_device_detach(ndev);
  }
  rtnl_unlock();
 }
 sky2_suspend(&pdev->dev);
 pci_wake_from_d3(pdev, device_may_wakeup(&pdev->dev));
 pci_set_power_state(pdev, PCI_D3hot);
}
