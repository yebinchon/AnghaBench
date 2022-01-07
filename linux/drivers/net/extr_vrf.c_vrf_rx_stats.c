
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpu_dstats {int rx_bytes; int syncp; int rx_pkts; } ;
struct net_device {int dstats; } ;


 struct pcpu_dstats* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static void vrf_rx_stats(struct net_device *dev, int len)
{
 struct pcpu_dstats *dstats = this_cpu_ptr(dev->dstats);

 u64_stats_update_begin(&dstats->syncp);
 dstats->rx_pkts++;
 dstats->rx_bytes += len;
 u64_stats_update_end(&dstats->syncp);
}
