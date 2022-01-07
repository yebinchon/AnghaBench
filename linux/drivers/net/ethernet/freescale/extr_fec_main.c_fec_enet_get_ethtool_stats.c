
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct net_device {int dummy; } ;
struct fec_enet_private {int ethtool_stats; } ;
struct ethtool_stats {int dummy; } ;


 int FEC_STATS_SIZE ;
 int fec_enet_update_ethtool_stats (struct net_device*) ;
 int memcpy (int *,int ,int ) ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static void fec_enet_get_ethtool_stats(struct net_device *dev,
           struct ethtool_stats *stats, u64 *data)
{
 struct fec_enet_private *fep = netdev_priv(dev);

 if (netif_running(dev))
  fec_enet_update_ethtool_stats(dev);

 memcpy(data, fep->ethtool_stats, FEC_STATS_SIZE);
}
