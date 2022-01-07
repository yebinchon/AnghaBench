
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_rxq_stats {int syncp; } ;
struct hinic_rxq {struct hinic_rxq_stats rxq_stats; } ;


 int hinic_rxq_clean_stats (struct hinic_rxq*) ;
 int u64_stats_init (int *) ;

__attribute__((used)) static void rxq_stats_init(struct hinic_rxq *rxq)
{
 struct hinic_rxq_stats *rxq_stats = &rxq->rxq_stats;

 u64_stats_init(&rxq_stats->syncp);
 hinic_rxq_clean_stats(rxq);
}
