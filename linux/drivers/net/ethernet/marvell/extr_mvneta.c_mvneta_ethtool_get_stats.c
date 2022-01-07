
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct net_device {int dummy; } ;
struct mvneta_port {int * ethtool_stats; } ;
struct ethtool_stats {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int mvneta_ethtool_update_stats (struct mvneta_port*) ;
 int mvneta_statistics ;
 struct mvneta_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static void mvneta_ethtool_get_stats(struct net_device *dev,
         struct ethtool_stats *stats, u64 *data)
{
 struct mvneta_port *pp = netdev_priv(dev);
 int i;

 mvneta_ethtool_update_stats(pp);

 for (i = 0; i < ARRAY_SIZE(mvneta_statistics); i++)
  *data++ = pp->ethtool_stats[i];
}
