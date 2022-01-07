
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qede_rx_queue {struct qede_agg_info* tpa_info; } ;
struct qede_agg_info {int state; } ;


 int ETH_TPA_MAX_AGGS_NUM ;
 int QEDE_AGG_STATE_NONE ;

__attribute__((used)) static void qede_set_tpa_param(struct qede_rx_queue *rxq)
{
 int i;

 for (i = 0; i < ETH_TPA_MAX_AGGS_NUM; i++) {
  struct qede_agg_info *tpa_info = &rxq->tpa_info[i];

  tpa_info->state = QEDE_AGG_STATE_NONE;
 }
}
