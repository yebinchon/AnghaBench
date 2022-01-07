
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct ixgb_adapter {int watchdog_timer; } ;


 scalar_t__ ixgb_up (struct ixgb_adapter*) ;
 int jiffies ;
 int mod_timer (int *,int ) ;
 struct ixgb_adapter* netdev_priv (struct net_device*) ;
 int netif_device_attach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 int pr_err (char*) ;

__attribute__((used)) static void ixgb_io_resume(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct ixgb_adapter *adapter = netdev_priv(netdev);

 pci_set_master(pdev);

 if (netif_running(netdev)) {
  if (ixgb_up(adapter)) {
   pr_err("can't bring device back up after reset\n");
   return;
  }
 }

 netif_device_attach(netdev);
 mod_timer(&adapter->watchdog_timer, jiffies);
}
