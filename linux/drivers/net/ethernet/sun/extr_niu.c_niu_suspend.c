
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct niu {int lock; int timer; int reset_task; } ;
struct net_device {int dummy; } ;
typedef int pm_message_t ;


 int del_timer_sync (int *) ;
 int flush_work (int *) ;
 struct niu* netdev_priv (struct net_device*) ;
 int netif_device_detach (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int niu_enable_interrupts (struct niu*,int ) ;
 int niu_netif_stop (struct niu*) ;
 int niu_stop_hw (struct niu*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int niu_suspend(struct pci_dev *pdev, pm_message_t state)
{
 struct net_device *dev = pci_get_drvdata(pdev);
 struct niu *np = netdev_priv(dev);
 unsigned long flags;

 if (!netif_running(dev))
  return 0;

 flush_work(&np->reset_task);
 niu_netif_stop(np);

 del_timer_sync(&np->timer);

 spin_lock_irqsave(&np->lock, flags);
 niu_enable_interrupts(np, 0);
 spin_unlock_irqrestore(&np->lock, flags);

 netif_device_detach(dev);

 spin_lock_irqsave(&np->lock, flags);
 niu_stop_hw(np);
 spin_unlock_irqrestore(&np->lock, flags);

 pci_save_state(pdev);

 return 0;
}
