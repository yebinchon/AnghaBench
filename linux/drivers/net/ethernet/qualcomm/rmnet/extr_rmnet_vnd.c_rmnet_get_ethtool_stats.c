
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rmnet_priv_stats {int dummy; } ;
struct rmnet_priv {struct rmnet_priv_stats stats; } ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int memcpy (int *,struct rmnet_priv_stats*,int) ;
 struct rmnet_priv* netdev_priv (struct net_device*) ;
 int rmnet_gstrings_stats ;

__attribute__((used)) static void rmnet_get_ethtool_stats(struct net_device *dev,
        struct ethtool_stats *stats, u64 *data)
{
 struct rmnet_priv *priv = netdev_priv(dev);
 struct rmnet_priv_stats *st = &priv->stats;

 if (!data)
  return;

 memcpy(data, st, ARRAY_SIZE(rmnet_gstrings_stats) * sizeof(u64));
}
