
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int rx_mcasts; int tx_mcasts; int rx_bcasts; int tx_bcasts; int tx_aborted; int tx_deferred_excessive; int tx_deferred; int tx_late_collisions; int tx_single_collisions; int tx_multiple_collisions; } ;
struct netdev_private {TYPE_1__ xstats; } ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;


 int get_stats (struct net_device*) ;
 struct netdev_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void get_ethtool_stats(struct net_device *dev,
  struct ethtool_stats *stats, u64 *data)
{
 struct netdev_private *np = netdev_priv(dev);
 int i = 0;

 get_stats(dev);
 data[i++] = np->xstats.tx_multiple_collisions;
 data[i++] = np->xstats.tx_single_collisions;
 data[i++] = np->xstats.tx_late_collisions;
 data[i++] = np->xstats.tx_deferred;
 data[i++] = np->xstats.tx_deferred_excessive;
 data[i++] = np->xstats.tx_aborted;
 data[i++] = np->xstats.tx_bcasts;
 data[i++] = np->xstats.rx_bcasts;
 data[i++] = np->xstats.tx_mcasts;
 data[i++] = np->xstats.rx_mcasts;
}
