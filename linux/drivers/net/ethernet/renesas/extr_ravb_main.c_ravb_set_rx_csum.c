
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ravb_private {int lock; } ;
struct net_device {int dummy; } ;


 int ECMR ;
 int ECMR_RCSC ;
 struct ravb_private* netdev_priv (struct net_device*) ;
 int ravb_modify (struct net_device*,int ,int ,int ) ;
 int ravb_rcv_snd_disable (struct net_device*) ;
 int ravb_rcv_snd_enable (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ravb_set_rx_csum(struct net_device *ndev, bool enable)
{
 struct ravb_private *priv = netdev_priv(ndev);
 unsigned long flags;

 spin_lock_irqsave(&priv->lock, flags);


 ravb_rcv_snd_disable(ndev);


 ravb_modify(ndev, ECMR, ECMR_RCSC, enable ? ECMR_RCSC : 0);


 ravb_rcv_snd_enable(ndev);

 spin_unlock_irqrestore(&priv->lock, flags);
}
