
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct iwl_priv {int bt_full_concurrent; int bt_is_sco; int agg_q_alloc; int * queue_stop_count; int * queue_to_mac80211; void* bt_status; void* bt_traffic_load; void* bt_ci_compliance; scalar_t__ is_open; int mutex; } ;


 int IWLAGN_FIRST_AMPDU_QUEUE ;
 int IWL_INVALID_MAC80211_QUEUE ;
 int IWL_MAX_HW_QUEUES ;
 int atomic_set (int *,int ) ;
 int iwl_down (struct iwl_priv*) ;
 int lockdep_assert_held (int *) ;
 int memset (int ,int ,int) ;

void iwlagn_prepare_restart(struct iwl_priv *priv)
{
 bool bt_full_concurrent;
 u8 bt_ci_compliance;
 u8 bt_load;
 u8 bt_status;
 bool bt_is_sco;
 int i;

 lockdep_assert_held(&priv->mutex);

 priv->is_open = 0;
 bt_full_concurrent = priv->bt_full_concurrent;
 bt_ci_compliance = priv->bt_ci_compliance;
 bt_load = priv->bt_traffic_load;
 bt_status = priv->bt_status;
 bt_is_sco = priv->bt_is_sco;

 iwl_down(priv);

 priv->bt_full_concurrent = bt_full_concurrent;
 priv->bt_ci_compliance = bt_ci_compliance;
 priv->bt_traffic_load = bt_load;
 priv->bt_status = bt_status;
 priv->bt_is_sco = bt_is_sco;


 for (i = IWLAGN_FIRST_AMPDU_QUEUE; i < IWL_MAX_HW_QUEUES; i++)
  priv->queue_to_mac80211[i] = IWL_INVALID_MAC80211_QUEUE;

 for (i = 0; i < IWL_MAX_HW_QUEUES; i++)
  atomic_set(&priv->queue_stop_count[i], 0);

 memset(priv->agg_q_alloc, 0, sizeof(priv->agg_q_alloc));
}
