
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_link_stats64 {scalar_t__ tx_dropped; scalar_t__ multicast; scalar_t__ rx_missed_errors; scalar_t__ tx_bytes; scalar_t__ rx_bytes; scalar_t__ tx_packets; scalar_t__ rx_packets; } ;
struct bnxt {struct rtnl_link_stats64 net_stats_prev; } ;



__attribute__((used)) static void bnxt_add_prev_stats(struct bnxt *bp,
    struct rtnl_link_stats64 *stats)
{
 struct rtnl_link_stats64 *prev_stats = &bp->net_stats_prev;

 stats->rx_packets += prev_stats->rx_packets;
 stats->tx_packets += prev_stats->tx_packets;
 stats->rx_bytes += prev_stats->rx_bytes;
 stats->tx_bytes += prev_stats->tx_bytes;
 stats->rx_missed_errors += prev_stats->rx_missed_errors;
 stats->multicast += prev_stats->multicast;
 stats->tx_dropped += prev_stats->tx_dropped;
}
