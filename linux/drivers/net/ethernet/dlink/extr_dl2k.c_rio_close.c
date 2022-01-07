
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int irq; } ;
struct netdev_private {int timer; struct pci_dev* pdev; } ;
struct net_device {int dummy; } ;


 int del_timer_sync (int *) ;
 int free_irq (int ,struct net_device*) ;
 int free_list (struct net_device*) ;
 struct netdev_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int rio_hw_stop (struct net_device*) ;

__attribute__((used)) static int
rio_close (struct net_device *dev)
{
 struct netdev_private *np = netdev_priv(dev);
 struct pci_dev *pdev = np->pdev;

 netif_stop_queue (dev);

 rio_hw_stop(dev);

 free_irq(pdev->irq, dev);
 del_timer_sync (&np->timer);

 free_list(dev);

 return 0;
}
