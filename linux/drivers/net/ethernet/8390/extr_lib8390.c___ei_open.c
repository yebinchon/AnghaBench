
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ watchdog_timeo; } ;
struct ei_device {scalar_t__ irqlock; int page_lock; } ;


 scalar_t__ TX_TIMEOUT ;
 int __NS8390_init (struct net_device*,int) ;
 struct ei_device* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int __ei_open(struct net_device *dev)
{
 unsigned long flags;
 struct ei_device *ei_local = netdev_priv(dev);

 if (dev->watchdog_timeo <= 0)
  dev->watchdog_timeo = TX_TIMEOUT;






 spin_lock_irqsave(&ei_local->page_lock, flags);
 __NS8390_init(dev, 1);


 netif_start_queue(dev);
 spin_unlock_irqrestore(&ei_local->page_lock, flags);
 ei_local->irqlock = 0;
 return 0;
}
