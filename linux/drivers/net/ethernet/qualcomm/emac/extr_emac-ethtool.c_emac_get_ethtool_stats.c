
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct TYPE_2__ {int lock; } ;
struct emac_adapter {TYPE_1__ stats; } ;


 int EMAC_STATS_LEN ;
 int emac_update_hw_stats (struct emac_adapter*) ;
 int memcpy (int *,TYPE_1__*,int) ;
 struct emac_adapter* netdev_priv (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void emac_get_ethtool_stats(struct net_device *netdev,
       struct ethtool_stats *stats,
       u64 *data)
{
 struct emac_adapter *adpt = netdev_priv(netdev);

 spin_lock(&adpt->stats.lock);

 emac_update_hw_stats(adpt);
 memcpy(data, &adpt->stats, EMAC_STATS_LEN * sizeof(u64));

 spin_unlock(&adpt->stats.lock);
}
