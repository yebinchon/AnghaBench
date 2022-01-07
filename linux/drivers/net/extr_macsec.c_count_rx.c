
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpu_sw_netstats {int rx_bytes; int syncp; int rx_packets; } ;
struct net_device {int tstats; } ;


 struct pcpu_sw_netstats* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static void count_rx(struct net_device *dev, int len)
{
 struct pcpu_sw_netstats *stats = this_cpu_ptr(dev->tstats);

 u64_stats_update_begin(&stats->syncp);
 stats->rx_packets++;
 stats->rx_bytes += len;
 u64_stats_update_end(&stats->syncp);
}
