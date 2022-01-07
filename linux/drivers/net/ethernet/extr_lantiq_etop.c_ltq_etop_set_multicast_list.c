
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; } ;
struct ltq_etop_priv {int lock; } ;


 int ETOP_FTCU ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int LTQ_ETOP_ENETS0 ;
 int ltq_etop_w32_mask (int ,int ,int ) ;
 struct ltq_etop_priv* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
ltq_etop_set_multicast_list(struct net_device *dev)
{
 struct ltq_etop_priv *priv = netdev_priv(dev);
 unsigned long flags;


 spin_lock_irqsave(&priv->lock, flags);
 if ((dev->flags & IFF_PROMISC) || (dev->flags & IFF_ALLMULTI))
  ltq_etop_w32_mask(ETOP_FTCU, 0, LTQ_ETOP_ENETS0);
 else
  ltq_etop_w32_mask(0, ETOP_FTCU, LTQ_ETOP_ENETS0);
 spin_unlock_irqrestore(&priv->lock, flags);
}
