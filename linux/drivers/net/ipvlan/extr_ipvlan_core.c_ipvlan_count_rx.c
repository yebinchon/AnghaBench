
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipvl_pcpu_stats {unsigned int rx_bytes; int syncp; int rx_mcast; int rx_pkts; } ;
struct ipvl_dev {TYPE_1__* pcpu_stats; } ;
struct TYPE_2__ {int rx_errs; } ;


 scalar_t__ likely (int) ;
 int this_cpu_inc (int ) ;
 struct ipvl_pcpu_stats* this_cpu_ptr (TYPE_1__*) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

void ipvlan_count_rx(const struct ipvl_dev *ipvlan,
       unsigned int len, bool success, bool mcast)
{
 if (likely(success)) {
  struct ipvl_pcpu_stats *pcptr;

  pcptr = this_cpu_ptr(ipvlan->pcpu_stats);
  u64_stats_update_begin(&pcptr->syncp);
  pcptr->rx_pkts++;
  pcptr->rx_bytes += len;
  if (mcast)
   pcptr->rx_mcast++;
  u64_stats_update_end(&pcptr->syncp);
 } else {
  this_cpu_inc(ipvlan->pcpu_stats->rx_errs);
 }
}
