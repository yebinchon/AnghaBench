
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_link_stats64 {int dummy; } ;
struct tg3 {int lock; struct rtnl_link_stats64 net_stats_prev; int hw_stats; } ;
struct net_device {int dummy; } ;


 int INIT_COMPLETE ;
 struct tg3* netdev_priv (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tg3_flag (struct tg3*,int ) ;
 int tg3_get_nstats (struct tg3*,struct rtnl_link_stats64*) ;

__attribute__((used)) static void tg3_get_stats64(struct net_device *dev,
       struct rtnl_link_stats64 *stats)
{
 struct tg3 *tp = netdev_priv(dev);

 spin_lock_bh(&tp->lock);
 if (!tp->hw_stats || !tg3_flag(tp, INIT_COMPLETE)) {
  *stats = tp->net_stats_prev;
  spin_unlock_bh(&tp->lock);
  return;
 }

 tg3_get_nstats(tp, stats);
 spin_unlock_bh(&tp->lock);
}
