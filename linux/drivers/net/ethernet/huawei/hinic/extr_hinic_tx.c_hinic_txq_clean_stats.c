
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_txq_stats {int syncp; scalar_t__ big_frags_pkts; scalar_t__ tx_dropped; scalar_t__ tx_wake; scalar_t__ tx_busy; scalar_t__ bytes; scalar_t__ pkts; } ;
struct hinic_txq {struct hinic_txq_stats txq_stats; } ;


 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

void hinic_txq_clean_stats(struct hinic_txq *txq)
{
 struct hinic_txq_stats *txq_stats = &txq->txq_stats;

 u64_stats_update_begin(&txq_stats->syncp);
 txq_stats->pkts = 0;
 txq_stats->bytes = 0;
 txq_stats->tx_busy = 0;
 txq_stats->tx_wake = 0;
 txq_stats->tx_dropped = 0;
 txq_stats->big_frags_pkts = 0;
 u64_stats_update_end(&txq_stats->syncp);
}
