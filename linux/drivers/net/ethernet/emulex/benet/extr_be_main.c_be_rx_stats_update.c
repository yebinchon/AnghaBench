
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_rx_stats {int sync; int rx_compl_err; int rx_mcast_pkts; int rx_vxlan_offload_pkts; int rx_pkts; int rx_bytes; int rx_compl; } ;
struct be_rx_obj {int dummy; } ;
struct be_rx_compl_info {scalar_t__ pkt_type; scalar_t__ err; scalar_t__ tunneled; scalar_t__ pkt_size; } ;


 scalar_t__ BE_MULTICAST_PACKET ;
 struct be_rx_stats* rx_stats (struct be_rx_obj*) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static void be_rx_stats_update(struct be_rx_obj *rxo,
          struct be_rx_compl_info *rxcp)
{
 struct be_rx_stats *stats = rx_stats(rxo);

 u64_stats_update_begin(&stats->sync);
 stats->rx_compl++;
 stats->rx_bytes += rxcp->pkt_size;
 stats->rx_pkts++;
 if (rxcp->tunneled)
  stats->rx_vxlan_offload_pkts++;
 if (rxcp->pkt_type == BE_MULTICAST_PACKET)
  stats->rx_mcast_pkts++;
 if (rxcp->err)
  stats->rx_compl_err++;
 u64_stats_update_end(&stats->sync);
}
