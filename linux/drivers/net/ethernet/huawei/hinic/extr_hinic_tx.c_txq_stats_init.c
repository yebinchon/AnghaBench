
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_txq_stats {int syncp; } ;
struct hinic_txq {struct hinic_txq_stats txq_stats; } ;


 int hinic_txq_clean_stats (struct hinic_txq*) ;
 int u64_stats_init (int *) ;

__attribute__((used)) static void txq_stats_init(struct hinic_txq *txq)
{
 struct hinic_txq_stats *txq_stats = &txq->txq_stats;

 u64_stats_init(&txq_stats->syncp);
 hinic_txq_clean_stats(txq);
}
