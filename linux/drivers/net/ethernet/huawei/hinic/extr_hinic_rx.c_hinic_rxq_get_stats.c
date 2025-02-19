
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_rxq_stats {int syncp; scalar_t__ other_errors; scalar_t__ csum_errors; scalar_t__ errors; int bytes; int pkts; } ;
struct hinic_rxq {struct hinic_rxq_stats rxq_stats; } ;


 unsigned int u64_stats_fetch_begin (int *) ;
 scalar_t__ u64_stats_fetch_retry (int *,unsigned int) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

void hinic_rxq_get_stats(struct hinic_rxq *rxq, struct hinic_rxq_stats *stats)
{
 struct hinic_rxq_stats *rxq_stats = &rxq->rxq_stats;
 unsigned int start;

 u64_stats_update_begin(&stats->syncp);
 do {
  start = u64_stats_fetch_begin(&rxq_stats->syncp);
  stats->pkts = rxq_stats->pkts;
  stats->bytes = rxq_stats->bytes;
  stats->errors = rxq_stats->csum_errors +
    rxq_stats->other_errors;
  stats->csum_errors = rxq_stats->csum_errors;
  stats->other_errors = rxq_stats->other_errors;
 } while (u64_stats_fetch_retry(&rxq_stats->syncp, start));
 u64_stats_update_end(&stats->syncp);
}
