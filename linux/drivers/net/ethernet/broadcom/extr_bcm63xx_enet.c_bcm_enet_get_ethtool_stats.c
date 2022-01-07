
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct net_device {int stats; } ;
struct ethtool_stats {int dummy; } ;
struct bcm_enet_stats {int mib_reg; int sizeof_stat; int stat_offset; } ;
struct bcm_enet_priv {int mib_update_lock; } ;


 int BCM_ENET_STATS_LEN ;
 struct bcm_enet_stats* bcm_enet_gstrings_stats ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct bcm_enet_priv* netdev_priv (struct net_device*) ;
 int update_mib_counters (struct bcm_enet_priv*) ;

__attribute__((used)) static void bcm_enet_get_ethtool_stats(struct net_device *netdev,
           struct ethtool_stats *stats,
           u64 *data)
{
 struct bcm_enet_priv *priv;
 int i;

 priv = netdev_priv(netdev);

 mutex_lock(&priv->mib_update_lock);
 update_mib_counters(priv);

 for (i = 0; i < BCM_ENET_STATS_LEN; i++) {
  const struct bcm_enet_stats *s;
  char *p;

  s = &bcm_enet_gstrings_stats[i];
  if (s->mib_reg == -1)
   p = (char *)&netdev->stats;
  else
   p = (char *)priv;
  p += s->stat_offset;
  data[i] = (s->sizeof_stat == sizeof(u64)) ?
   *(u64 *)p : *(u32 *)p;
 }
 mutex_unlock(&priv->mib_update_lock);
}
