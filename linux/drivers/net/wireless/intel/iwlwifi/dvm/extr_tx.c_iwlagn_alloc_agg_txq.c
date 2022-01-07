
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iwl_priv {int* queue_to_mac80211; int agg_q_alloc; TYPE_3__* trans; } ;
struct TYPE_6__ {TYPE_2__* trans_cfg; } ;
struct TYPE_5__ {TYPE_1__* base_params; } ;
struct TYPE_4__ {int num_of_queues; } ;


 int ENOSPC ;
 int IWLAGN_FIRST_AMPDU_QUEUE ;
 int test_and_set_bit (int,int ) ;

__attribute__((used)) static int iwlagn_alloc_agg_txq(struct iwl_priv *priv, int mq)
{
 int q;

 for (q = IWLAGN_FIRST_AMPDU_QUEUE;
      q < priv->trans->trans_cfg->base_params->num_of_queues; q++) {
  if (!test_and_set_bit(q, priv->agg_q_alloc)) {
   priv->queue_to_mac80211[q] = mq;
   return q;
  }
 }

 return -ENOSPC;
}
