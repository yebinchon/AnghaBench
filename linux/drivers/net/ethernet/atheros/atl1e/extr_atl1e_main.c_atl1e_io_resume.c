
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct atl1e_adapter {int netdev; } ;


 scalar_t__ atl1e_up (struct atl1e_adapter*) ;
 int netdev_err (int ,char*) ;
 struct atl1e_adapter* netdev_priv (struct net_device*) ;
 int netif_device_attach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void atl1e_io_resume(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct atl1e_adapter *adapter = netdev_priv(netdev);

 if (netif_running(netdev)) {
  if (atl1e_up(adapter)) {
   netdev_err(adapter->netdev,
       "can't bring device back up after reset\n");
   return;
  }
 }

 netif_device_attach(netdev);
}
