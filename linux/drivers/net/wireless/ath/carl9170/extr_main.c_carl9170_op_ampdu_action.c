
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int addr; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ar9170* priv; } ;
struct ieee80211_ampdu_params {int action; size_t tid; size_t ssn; struct ieee80211_sta* sta; } ;
struct carl9170_sta_tid {size_t hsn; size_t bsn; size_t snx; size_t tid; int state; int bitmap; int list; int lock; int queue; int tmp_list; struct ieee80211_vif* vif; struct ieee80211_sta* sta; int max; } ;
struct carl9170_sta_info {TYPE_1__* stats; int * agg; int ampdu_max_len; int ht_sta; } ;
struct ar9170 {int ampdu_work; int hw; int tx_ampdu_list_lock; int tx_ampdu_list; int tx_ampdu_list_len; } ;
typedef enum ieee80211_ampdu_mlme_action { ____Placeholder_ieee80211_ampdu_mlme_action } ieee80211_ampdu_mlme_action ;
struct TYPE_2__ {int clear; int req; } ;


 int CARL9170_BAW_SIZE ;
 int CARL9170_TID_STATE_IDLE ;
 int CARL9170_TID_STATE_PROGRESS ;
 int CARL9170_TID_STATE_SHUTDOWN ;
 int EFAULT ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_ATOMIC ;







 int INIT_LIST_HEAD (int *) ;
 int RCU_INIT_POINTER (int ,int *) ;
 int WARN_ON_ONCE (int) ;
 int bitmap_zero (int ,int ) ;
 int ieee80211_queue_work (int ,int *) ;
 int ieee80211_start_tx_ba_cb_irqsafe (struct ieee80211_vif*,int ,size_t) ;
 int ieee80211_stop_tx_ba_cb_irqsafe (struct ieee80211_vif*,int ,size_t) ;
 struct carl9170_sta_tid* kzalloc (int,int ) ;
 int list_add_tail_rcu (int *,int *) ;
 scalar_t__ modparam_noht ;
 int rcu_assign_pointer (int ,struct carl9170_sta_tid*) ;
 struct carl9170_sta_tid* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int skb_queue_head_init (int *) ;
 int spin_lock_bh (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int carl9170_op_ampdu_action(struct ieee80211_hw *hw,
        struct ieee80211_vif *vif,
        struct ieee80211_ampdu_params *params)
{
 struct ieee80211_sta *sta = params->sta;
 enum ieee80211_ampdu_mlme_action action = params->action;
 u16 tid = params->tid;
 u16 *ssn = &params->ssn;
 struct ar9170 *ar = hw->priv;
 struct carl9170_sta_info *sta_info = (void *) sta->drv_priv;
 struct carl9170_sta_tid *tid_info;

 if (modparam_noht)
  return -EOPNOTSUPP;

 switch (action) {
 case 131:
  if (!sta_info->ht_sta)
   return -EOPNOTSUPP;

  tid_info = kzalloc(sizeof(struct carl9170_sta_tid),
       GFP_ATOMIC);
  if (!tid_info)
   return -ENOMEM;

  tid_info->hsn = tid_info->bsn = tid_info->snx = (*ssn);
  tid_info->state = CARL9170_TID_STATE_PROGRESS;
  tid_info->tid = tid;
  tid_info->max = sta_info->ampdu_max_len;
  tid_info->sta = sta;
  tid_info->vif = vif;

  INIT_LIST_HEAD(&tid_info->list);
  INIT_LIST_HEAD(&tid_info->tmp_list);
  skb_queue_head_init(&tid_info->queue);
  spin_lock_init(&tid_info->lock);

  spin_lock_bh(&ar->tx_ampdu_list_lock);
  ar->tx_ampdu_list_len++;
  list_add_tail_rcu(&tid_info->list, &ar->tx_ampdu_list);
  rcu_assign_pointer(sta_info->agg[tid], tid_info);
  spin_unlock_bh(&ar->tx_ampdu_list_lock);

  ieee80211_start_tx_ba_cb_irqsafe(vif, sta->addr, tid);
  break;

 case 130:
 case 129:
 case 128:
  rcu_read_lock();
  tid_info = rcu_dereference(sta_info->agg[tid]);
  if (tid_info) {
   spin_lock_bh(&ar->tx_ampdu_list_lock);
   if (tid_info->state > CARL9170_TID_STATE_SHUTDOWN)
    tid_info->state = CARL9170_TID_STATE_SHUTDOWN;
   spin_unlock_bh(&ar->tx_ampdu_list_lock);
  }

  RCU_INIT_POINTER(sta_info->agg[tid], ((void*)0));
  rcu_read_unlock();

  ieee80211_stop_tx_ba_cb_irqsafe(vif, sta->addr, tid);
  ieee80211_queue_work(ar->hw, &ar->ampdu_work);
  break;

 case 132:
  rcu_read_lock();
  tid_info = rcu_dereference(sta_info->agg[tid]);

  sta_info->stats[tid].clear = 1;
  sta_info->stats[tid].req = 0;

  if (tid_info) {
   bitmap_zero(tid_info->bitmap, CARL9170_BAW_SIZE);
   tid_info->state = CARL9170_TID_STATE_IDLE;
  }
  rcu_read_unlock();

  if (WARN_ON_ONCE(!tid_info))
   return -EFAULT;

  break;

 case 134:
 case 133:

  break;

 default:
  return -EOPNOTSUPP;
 }

 return 0;
}
