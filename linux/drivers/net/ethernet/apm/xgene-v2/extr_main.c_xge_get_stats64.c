
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xge_stats {scalar_t__ rx_errors; scalar_t__ rx_bytes; scalar_t__ rx_packets; scalar_t__ tx_bytes; scalar_t__ tx_packets; } ;
struct xge_pdata {struct xge_stats stats; } ;
struct rtnl_link_stats64 {int rx_errors; int rx_bytes; int rx_packets; int tx_bytes; int tx_packets; } ;
struct net_device {int dummy; } ;


 struct xge_pdata* netdev_priv (struct net_device*) ;

__attribute__((used)) static void xge_get_stats64(struct net_device *ndev,
       struct rtnl_link_stats64 *storage)
{
 struct xge_pdata *pdata = netdev_priv(ndev);
 struct xge_stats *stats = &pdata->stats;

 storage->tx_packets += stats->tx_packets;
 storage->tx_bytes += stats->tx_bytes;

 storage->rx_packets += stats->rx_packets;
 storage->rx_bytes += stats->rx_bytes;
 storage->rx_errors += stats->rx_errors;
}
