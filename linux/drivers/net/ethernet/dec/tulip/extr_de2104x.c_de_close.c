
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct de_private {TYPE_1__* pdev; int lock; int media_timer; } ;
struct TYPE_2__ {int irq; } ;


 int de_adapter_sleep (struct de_private*) ;
 int de_free_rings (struct de_private*) ;
 int de_stop_hw (struct de_private*) ;
 int del_timer_sync (int *) ;
 int free_irq (int ,struct net_device*) ;
 int ifdown ;
 struct de_private* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_dbg (struct de_private*,int ,struct net_device*,char*) ;
 int netif_stop_queue (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int de_close (struct net_device *dev)
{
 struct de_private *de = netdev_priv(dev);
 unsigned long flags;

 netif_dbg(de, ifdown, dev, "disabling interface\n");

 del_timer_sync(&de->media_timer);

 spin_lock_irqsave(&de->lock, flags);
 de_stop_hw(de);
 netif_stop_queue(dev);
 netif_carrier_off(dev);
 spin_unlock_irqrestore(&de->lock, flags);

 free_irq(de->pdev->irq, dev);

 de_free_rings(de);
 de_adapter_sleep(de);
 return 0;
}
