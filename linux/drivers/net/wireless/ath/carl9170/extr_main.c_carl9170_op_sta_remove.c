
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_vif {int dummy; } ;
struct TYPE_2__ {scalar_t__ ht_supported; } ;
struct ieee80211_sta {TYPE_1__ ht_cap; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ar9170* priv; } ;
struct carl9170_sta_tid {scalar_t__ state; } ;
struct carl9170_sta_info {int ht_sta; int * agg; } ;
struct ar9170 {int tx_ampdu_list_lock; } ;


 unsigned int ARRAY_SIZE (int *) ;
 scalar_t__ CARL9170_TID_STATE_SHUTDOWN ;
 int RCU_INIT_POINTER (int ,int *) ;
 int carl9170_ampdu_gc (struct ar9170*) ;
 struct carl9170_sta_tid* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int carl9170_op_sta_remove(struct ieee80211_hw *hw,
    struct ieee80211_vif *vif,
    struct ieee80211_sta *sta)
{
 struct ar9170 *ar = hw->priv;
 struct carl9170_sta_info *sta_info = (void *) sta->drv_priv;
 unsigned int i;
 bool cleanup = 0;

 if (sta->ht_cap.ht_supported) {

  sta_info->ht_sta = 0;

  rcu_read_lock();
  for (i = 0; i < ARRAY_SIZE(sta_info->agg); i++) {
   struct carl9170_sta_tid *tid_info;

   tid_info = rcu_dereference(sta_info->agg[i]);
   RCU_INIT_POINTER(sta_info->agg[i], ((void*)0));

   if (!tid_info)
    continue;

   spin_lock_bh(&ar->tx_ampdu_list_lock);
   if (tid_info->state > CARL9170_TID_STATE_SHUTDOWN)
    tid_info->state = CARL9170_TID_STATE_SHUTDOWN;
   spin_unlock_bh(&ar->tx_ampdu_list_lock);
   cleanup = 1;
  }
  rcu_read_unlock();

  if (cleanup)
   carl9170_ampdu_gc(ar);
 }

 return 0;
}
