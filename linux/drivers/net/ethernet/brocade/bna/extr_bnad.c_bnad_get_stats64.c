
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_link_stats64 {int dummy; } ;
struct net_device {int dummy; } ;
struct bnad {int bna_lock; } ;


 int bnad_netdev_hwstats_fill (struct bnad*,struct rtnl_link_stats64*) ;
 int bnad_netdev_qstats_fill (struct bnad*,struct rtnl_link_stats64*) ;
 struct bnad* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
bnad_get_stats64(struct net_device *netdev, struct rtnl_link_stats64 *stats)
{
 struct bnad *bnad = netdev_priv(netdev);
 unsigned long flags;

 spin_lock_irqsave(&bnad->bna_lock, flags);

 bnad_netdev_qstats_fill(bnad, stats);
 bnad_netdev_hwstats_fill(bnad, stats);

 spin_unlock_irqrestore(&bnad->bna_lock, flags);
}
