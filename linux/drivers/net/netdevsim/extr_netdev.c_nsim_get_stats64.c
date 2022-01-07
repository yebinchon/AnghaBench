
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_link_stats64 {int tx_packets; int tx_bytes; } ;
struct netdevsim {int tx_packets; int tx_bytes; int syncp; } ;
struct net_device {int dummy; } ;


 struct netdevsim* netdev_priv (struct net_device*) ;
 unsigned int u64_stats_fetch_begin (int *) ;
 scalar_t__ u64_stats_fetch_retry (int *,unsigned int) ;

__attribute__((used)) static void
nsim_get_stats64(struct net_device *dev, struct rtnl_link_stats64 *stats)
{
 struct netdevsim *ns = netdev_priv(dev);
 unsigned int start;

 do {
  start = u64_stats_fetch_begin(&ns->syncp);
  stats->tx_bytes = ns->tx_bytes;
  stats->tx_packets = ns->tx_packets;
 } while (u64_stats_fetch_retry(&ns->syncp, start));
}
