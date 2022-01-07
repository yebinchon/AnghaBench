
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;
struct ltq_etop_priv {int lock; } ;


 int ETOP_PLEN_UNDER ;
 int LTQ_ETOP_IGPLEN ;
 int ltq_etop_w32 (int,int ) ;
 struct ltq_etop_priv* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
ltq_etop_change_mtu(struct net_device *dev, int new_mtu)
{
 struct ltq_etop_priv *priv = netdev_priv(dev);
 unsigned long flags;

 dev->mtu = new_mtu;

 spin_lock_irqsave(&priv->lock, flags);
 ltq_etop_w32((ETOP_PLEN_UNDER << 16) | new_mtu, LTQ_ETOP_IGPLEN);
 spin_unlock_irqrestore(&priv->lock, flags);

 return 0;
}
