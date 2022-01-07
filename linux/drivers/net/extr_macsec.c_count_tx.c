
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpu_sw_netstats {int tx_bytes; int syncp; int tx_packets; } ;
struct net_device {int tstats; } ;


 int NET_XMIT_CN ;
 int NET_XMIT_SUCCESS ;
 scalar_t__ likely (int) ;
 struct pcpu_sw_netstats* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static void count_tx(struct net_device *dev, int ret, int len)
{
 if (likely(ret == NET_XMIT_SUCCESS || ret == NET_XMIT_CN)) {
  struct pcpu_sw_netstats *stats = this_cpu_ptr(dev->tstats);

  u64_stats_update_begin(&stats->syncp);
  stats->tx_packets++;
  stats->tx_bytes += len;
  u64_stats_update_end(&stats->syncp);
 }
}
