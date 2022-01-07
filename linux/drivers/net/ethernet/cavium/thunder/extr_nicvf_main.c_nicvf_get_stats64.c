
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_link_stats64 {int tx_dropped; int tx_packets; int tx_bytes; int multicast; int rx_dropped; int rx_packets; int rx_bytes; } ;
struct nicvf_hw_stats {int tx_drops; int tx_frames; int tx_bytes; int rx_mcast_frames; int rx_drops; int rx_frames; int rx_bytes; } ;
struct nicvf {struct nicvf_hw_stats hw_stats; } ;
struct net_device {int dummy; } ;


 struct nicvf* netdev_priv (struct net_device*) ;
 int nicvf_update_stats (struct nicvf*) ;

__attribute__((used)) static void nicvf_get_stats64(struct net_device *netdev,
         struct rtnl_link_stats64 *stats)
{
 struct nicvf *nic = netdev_priv(netdev);
 struct nicvf_hw_stats *hw_stats = &nic->hw_stats;

 nicvf_update_stats(nic);

 stats->rx_bytes = hw_stats->rx_bytes;
 stats->rx_packets = hw_stats->rx_frames;
 stats->rx_dropped = hw_stats->rx_drops;
 stats->multicast = hw_stats->rx_mcast_frames;

 stats->tx_bytes = hw_stats->tx_bytes;
 stats->tx_packets = hw_stats->tx_frames;
 stats->tx_dropped = hw_stats->tx_drops;

}
