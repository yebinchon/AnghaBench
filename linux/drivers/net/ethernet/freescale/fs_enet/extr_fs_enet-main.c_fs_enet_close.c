
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int phydev; } ;
struct fs_enet_private {int interrupt; int lock; int tx_lock; TYPE_1__* ops; int timeout_work; int napi; } ;
struct TYPE_2__ {int (* stop ) (struct net_device*) ;} ;


 int cancel_work_sync (int *) ;
 int free_irq (int ,struct net_device*) ;
 int napi_disable (int *) ;
 struct fs_enet_private* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int phy_disconnect (int ) ;
 int phy_stop (int ) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct net_device*) ;

__attribute__((used)) static int fs_enet_close(struct net_device *dev)
{
 struct fs_enet_private *fep = netdev_priv(dev);
 unsigned long flags;

 netif_stop_queue(dev);
 netif_carrier_off(dev);
 napi_disable(&fep->napi);
 cancel_work_sync(&fep->timeout_work);
 phy_stop(dev->phydev);

 spin_lock_irqsave(&fep->lock, flags);
 spin_lock(&fep->tx_lock);
 (*fep->ops->stop)(dev);
 spin_unlock(&fep->tx_lock);
 spin_unlock_irqrestore(&fep->lock, flags);


 phy_disconnect(dev->phydev);
 free_irq(fep->interrupt, dev);

 return 0;
}
