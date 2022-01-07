
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct cp_private {TYPE_1__* pdev; int lock; int napi; } ;
struct TYPE_2__ {int irq; } ;


 int cp_free_rings (struct cp_private*) ;
 int cp_stop_hw (struct cp_private*) ;
 int free_irq (int ,struct net_device*) ;
 int ifdown ;
 int napi_disable (int *) ;
 struct cp_private* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_dbg (struct cp_private*,int ,struct net_device*,char*) ;
 int netif_stop_queue (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cp_close (struct net_device *dev)
{
 struct cp_private *cp = netdev_priv(dev);
 unsigned long flags;

 napi_disable(&cp->napi);

 netif_dbg(cp, ifdown, dev, "disabling interface\n");

 spin_lock_irqsave(&cp->lock, flags);

 netif_stop_queue(dev);
 netif_carrier_off(dev);

 cp_stop_hw(cp);

 spin_unlock_irqrestore(&cp->lock, flags);

 free_irq(cp->pdev->irq, dev);

 cp_free_rings(cp);
 return 0;
}
