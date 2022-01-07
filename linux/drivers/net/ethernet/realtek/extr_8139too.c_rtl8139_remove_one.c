
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8139_private {int thread; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;


 int __rtl8139_cleanup_dev (struct net_device*) ;
 int assert (int ) ;
 int cancel_delayed_work_sync (int *) ;
 struct rtl8139_private* netdev_priv (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void rtl8139_remove_one(struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata (pdev);
 struct rtl8139_private *tp = netdev_priv(dev);

 assert (dev != ((void*)0));

 cancel_delayed_work_sync(&tp->thread);

 unregister_netdev (dev);

 __rtl8139_cleanup_dev (dev);
 pci_disable_device (pdev);
}
