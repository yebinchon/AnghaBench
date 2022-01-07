
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device_stats {int dummy; } ;
struct typhoon {scalar_t__ card_state; struct net_device_stats stats_saved; TYPE_1__* dev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct net_device_stats stats; } ;


 scalar_t__ Sleeping ;
 int netdev_err (struct net_device*,char*) ;
 struct typhoon* netdev_priv (struct net_device*) ;
 int smp_rmb () ;
 scalar_t__ typhoon_do_get_stats (struct typhoon*) ;

__attribute__((used)) static struct net_device_stats *
typhoon_get_stats(struct net_device *dev)
{
 struct typhoon *tp = netdev_priv(dev);
 struct net_device_stats *stats = &tp->dev->stats;
 struct net_device_stats *saved = &tp->stats_saved;

 smp_rmb();
 if(tp->card_state == Sleeping)
  return saved;

 if(typhoon_do_get_stats(tp) < 0) {
  netdev_err(dev, "error getting stats\n");
  return saved;
 }

 return stats;
}
