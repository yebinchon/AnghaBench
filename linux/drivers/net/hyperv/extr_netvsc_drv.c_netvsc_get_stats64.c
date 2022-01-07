
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct rtnl_link_stats64 {int multicast; int rx_packets; int rx_bytes; int tx_packets; int tx_bytes; int tx_dropped; } ;
struct netvsc_vf_pcpu_stats {scalar_t__ tx_dropped; scalar_t__ tx_bytes; scalar_t__ rx_bytes; scalar_t__ tx_packets; scalar_t__ rx_packets; } ;
struct netvsc_stats {scalar_t__ broadcast; scalar_t__ multicast; scalar_t__ bytes; scalar_t__ packets; int syncp; } ;
struct netvsc_device {int num_chn; struct netvsc_channel* chan_table; } ;
struct netvsc_channel {struct netvsc_stats rx_stats; struct netvsc_stats tx_stats; } ;
struct net_device_context {int nvdev; } ;
struct net_device {int stats; } ;


 struct net_device_context* netdev_priv (struct net_device*) ;
 int netdev_stats_to_stats64 (struct rtnl_link_stats64*,int *) ;
 int netvsc_get_vf_stats (struct net_device*,struct netvsc_vf_pcpu_stats*) ;
 struct netvsc_device* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 unsigned int u64_stats_fetch_begin_irq (int *) ;
 scalar_t__ u64_stats_fetch_retry_irq (int *,unsigned int) ;

__attribute__((used)) static void netvsc_get_stats64(struct net_device *net,
          struct rtnl_link_stats64 *t)
{
 struct net_device_context *ndev_ctx = netdev_priv(net);
 struct netvsc_device *nvdev;
 struct netvsc_vf_pcpu_stats vf_tot;
 int i;

 rcu_read_lock();

 nvdev = rcu_dereference(ndev_ctx->nvdev);
 if (!nvdev)
  goto out;

 netdev_stats_to_stats64(t, &net->stats);

 netvsc_get_vf_stats(net, &vf_tot);
 t->rx_packets += vf_tot.rx_packets;
 t->tx_packets += vf_tot.tx_packets;
 t->rx_bytes += vf_tot.rx_bytes;
 t->tx_bytes += vf_tot.tx_bytes;
 t->tx_dropped += vf_tot.tx_dropped;

 for (i = 0; i < nvdev->num_chn; i++) {
  const struct netvsc_channel *nvchan = &nvdev->chan_table[i];
  const struct netvsc_stats *stats;
  u64 packets, bytes, multicast;
  unsigned int start;

  stats = &nvchan->tx_stats;
  do {
   start = u64_stats_fetch_begin_irq(&stats->syncp);
   packets = stats->packets;
   bytes = stats->bytes;
  } while (u64_stats_fetch_retry_irq(&stats->syncp, start));

  t->tx_bytes += bytes;
  t->tx_packets += packets;

  stats = &nvchan->rx_stats;
  do {
   start = u64_stats_fetch_begin_irq(&stats->syncp);
   packets = stats->packets;
   bytes = stats->bytes;
   multicast = stats->multicast + stats->broadcast;
  } while (u64_stats_fetch_retry_irq(&stats->syncp, start));

  t->rx_bytes += bytes;
  t->rx_packets += packets;
  t->multicast += multicast;
 }
out:
 rcu_read_unlock();
}
