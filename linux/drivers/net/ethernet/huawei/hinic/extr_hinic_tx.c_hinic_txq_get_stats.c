
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_txq_stats {int syncp; int big_frags_pkts; int tx_dropped; int tx_wake; int tx_busy; int bytes; int pkts; } ;
struct hinic_txq {struct hinic_txq_stats txq_stats; } ;


 unsigned int u64_stats_fetch_begin (int *) ;
 scalar_t__ u64_stats_fetch_retry (int *,unsigned int) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

void hinic_txq_get_stats(struct hinic_txq *txq, struct hinic_txq_stats *stats)
{
 struct hinic_txq_stats *txq_stats = &txq->txq_stats;
 unsigned int start;

 u64_stats_update_begin(&stats->syncp);
 do {
  start = u64_stats_fetch_begin(&txq_stats->syncp);
  stats->pkts = txq_stats->pkts;
  stats->bytes = txq_stats->bytes;
  stats->tx_busy = txq_stats->tx_busy;
  stats->tx_wake = txq_stats->tx_wake;
  stats->tx_dropped = txq_stats->tx_dropped;
  stats->big_frags_pkts = txq_stats->big_frags_pkts;
 } while (u64_stats_fetch_retry(&txq_stats->syncp, start));
 u64_stats_update_end(&stats->syncp);
}
