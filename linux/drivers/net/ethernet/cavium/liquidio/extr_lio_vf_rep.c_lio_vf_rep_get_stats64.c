
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtnl_link_stats64 {int rx_dropped; int rx_bytes; int rx_packets; int tx_dropped; int tx_bytes; int tx_packets; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int tx_dropped; int tx_bytes; int tx_packets; int rx_dropped; int rx_bytes; int rx_packets; } ;
struct lio_vf_rep_desc {TYPE_1__ stats; } ;


 struct lio_vf_rep_desc* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
lio_vf_rep_get_stats64(struct net_device *dev,
         struct rtnl_link_stats64 *stats64)
{
 struct lio_vf_rep_desc *vf_rep = netdev_priv(dev);


 stats64->tx_packets = vf_rep->stats.rx_packets;
 stats64->tx_bytes = vf_rep->stats.rx_bytes;
 stats64->tx_dropped = vf_rep->stats.rx_dropped;

 stats64->rx_packets = vf_rep->stats.tx_packets;
 stats64->rx_bytes = vf_rep->stats.tx_bytes;
 stats64->rx_dropped = vf_rep->stats.tx_dropped;
}
