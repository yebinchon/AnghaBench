
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aggr_info {struct aggr_info* aggr_conn; int rx_amsdu_freeq; } ;


 int aggr_reset_state (struct aggr_info*) ;
 int kfree (struct aggr_info*) ;
 int skb_queue_purge (int *) ;

void aggr_module_destroy(struct aggr_info *aggr_info)
{
 if (!aggr_info)
  return;

 aggr_reset_state(aggr_info->aggr_conn);
 skb_queue_purge(&aggr_info->rx_amsdu_freeq);
 kfree(aggr_info->aggr_conn);
 kfree(aggr_info);
}
