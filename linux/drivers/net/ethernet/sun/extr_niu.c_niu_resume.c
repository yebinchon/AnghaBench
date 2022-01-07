
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct niu {int lock; TYPE_1__ timer; } ;
struct net_device {int dummy; } ;


 scalar_t__ HZ ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 struct niu* netdev_priv (struct net_device*) ;
 int netif_device_attach (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int niu_init_hw (struct niu*) ;
 int niu_netif_start (struct niu*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_restore_state (struct pci_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int niu_resume(struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata(pdev);
 struct niu *np = netdev_priv(dev);
 unsigned long flags;
 int err;

 if (!netif_running(dev))
  return 0;

 pci_restore_state(pdev);

 netif_device_attach(dev);

 spin_lock_irqsave(&np->lock, flags);

 err = niu_init_hw(np);
 if (!err) {
  np->timer.expires = jiffies + HZ;
  add_timer(&np->timer);
  niu_netif_start(np);
 }

 spin_unlock_irqrestore(&np->lock, flags);

 return err;
}
