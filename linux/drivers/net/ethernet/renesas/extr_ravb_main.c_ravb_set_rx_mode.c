
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ravb_private {int lock; } ;
struct net_device {long flags; } ;


 int ECMR ;
 int ECMR_PRM ;
 long IFF_PROMISC ;
 struct ravb_private* netdev_priv (struct net_device*) ;
 int ravb_modify (struct net_device*,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ravb_set_rx_mode(struct net_device *ndev)
{
 struct ravb_private *priv = netdev_priv(ndev);
 unsigned long flags;

 spin_lock_irqsave(&priv->lock, flags);
 ravb_modify(ndev, ECMR, ECMR_PRM,
      ndev->flags & IFF_PROMISC ? ECMR_PRM : 0);
 spin_unlock_irqrestore(&priv->lock, flags);
}
