
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_eth_private {int lock; } ;
struct net_device {int dummy; } ;


 int ECMR ;
 int ECMR_RCSC ;
 struct sh_eth_private* netdev_priv (struct net_device*) ;
 int sh_eth_modify (struct net_device*,int ,int ,int ) ;
 int sh_eth_rcv_snd_disable (struct net_device*) ;
 int sh_eth_rcv_snd_enable (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sh_eth_set_rx_csum(struct net_device *ndev, bool enable)
{
 struct sh_eth_private *mdp = netdev_priv(ndev);
 unsigned long flags;

 spin_lock_irqsave(&mdp->lock, flags);


 sh_eth_rcv_snd_disable(ndev);


 sh_eth_modify(ndev, ECMR, ECMR_RCSC, enable ? ECMR_RCSC : 0);


 sh_eth_rcv_snd_enable(ndev);

 spin_unlock_irqrestore(&mdp->lock, flags);
}
