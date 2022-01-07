
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_repr_pcpu_stats {unsigned int tx_bytes; int syncp; int tx_packets; } ;
struct nfp_repr {TYPE_1__* stats; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int tx_drops; } ;


 int NET_XMIT_CN ;
 int NET_XMIT_SUCCESS ;
 struct nfp_repr* netdev_priv (struct net_device*) ;
 int this_cpu_inc (int ) ;
 struct nfp_repr_pcpu_stats* this_cpu_ptr (TYPE_1__*) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
nfp_repr_inc_tx_stats(struct net_device *netdev, unsigned int len,
        int tx_status)
{
 struct nfp_repr *repr = netdev_priv(netdev);
 struct nfp_repr_pcpu_stats *stats;

 if (unlikely(tx_status != NET_XMIT_SUCCESS &&
       tx_status != NET_XMIT_CN)) {
  this_cpu_inc(repr->stats->tx_drops);
  return;
 }

 stats = this_cpu_ptr(repr->stats);
 u64_stats_update_begin(&stats->syncp);
 stats->tx_packets++;
 stats->tx_bytes += len;
 u64_stats_update_end(&stats->syncp);
}
