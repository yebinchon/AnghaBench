
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int access_lock; int curr_stat; } ;
struct lan78xx_net {TYPE_1__ stats; } ;
struct ethtool_stats {int dummy; } ;


 int lan78xx_update_stats (struct lan78xx_net*) ;
 int memcpy (int *,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct lan78xx_net* netdev_priv (struct net_device*) ;

__attribute__((used)) static void lan78xx_get_stats(struct net_device *netdev,
         struct ethtool_stats *stats, u64 *data)
{
 struct lan78xx_net *dev = netdev_priv(netdev);

 lan78xx_update_stats(dev);

 mutex_lock(&dev->stats.access_lock);
 memcpy(data, &dev->stats.curr_stat, sizeof(dev->stats.curr_stat));
 mutex_unlock(&dev->stats.access_lock);
}
