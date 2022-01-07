
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_repr_pcpu_stats {unsigned int rx_bytes; int syncp; int rx_packets; } ;
struct nfp_repr {int stats; } ;
struct net_device {int dummy; } ;


 struct nfp_repr* netdev_priv (struct net_device*) ;
 struct nfp_repr_pcpu_stats* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

void nfp_repr_inc_rx_stats(struct net_device *netdev, unsigned int len)
{
 struct nfp_repr *repr = netdev_priv(netdev);
 struct nfp_repr_pcpu_stats *stats;

 stats = this_cpu_ptr(repr->stats);
 u64_stats_update_begin(&stats->syncp);
 stats->rx_packets++;
 stats->rx_bytes += len;
 u64_stats_update_end(&stats->syncp);
}
