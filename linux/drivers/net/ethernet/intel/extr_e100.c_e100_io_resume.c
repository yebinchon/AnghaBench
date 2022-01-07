
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct nic {int watchdog; } ;
struct net_device {int dummy; } ;


 int PCI_D0 ;
 int e100_open (struct net_device*) ;
 int jiffies ;
 int mod_timer (int *,int ) ;
 struct nic* netdev_priv (struct net_device*) ;
 int netif_device_attach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int pci_enable_wake (struct pci_dev*,int ,int ) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void e100_io_resume(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct nic *nic = netdev_priv(netdev);


 pci_enable_wake(pdev, PCI_D0, 0);

 netif_device_attach(netdev);
 if (netif_running(netdev)) {
  e100_open(netdev);
  mod_timer(&nic->watchdog, jiffies);
 }
}
