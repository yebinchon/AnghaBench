
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct iwl_mvm_tid_data {int state; int ssn; int next_reclaimed; } ;
struct iwl_mvm_sta {int lock; struct ieee80211_vif* vif; struct iwl_mvm_tid_data* tid_data; } ;
struct iwl_mvm {TYPE_2__* trans; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int addr; } ;
struct TYPE_4__ {TYPE_1__* trans_cfg; } ;
struct TYPE_3__ {scalar_t__ gen2; } ;


 int IWL_AGG_OFF ;
 int IWL_AGG_ON ;
 int IWL_AGG_STARTING ;
 int IWL_DEBUG_TX_QUEUES (struct iwl_mvm*,char*,int) ;


 int ieee80211_sta_set_buffered (struct ieee80211_sta*,size_t,int) ;
 int ieee80211_start_tx_ba_cb_irqsafe (struct ieee80211_vif*,int ,size_t) ;
 int ieee80211_stop_tx_ba_cb_irqsafe (struct ieee80211_vif*,int ,size_t) ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_mac80211 (struct ieee80211_sta*) ;
 scalar_t__ iwl_mvm_tid_queued (struct iwl_mvm*,struct iwl_mvm_tid_data*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void iwl_mvm_check_ratid_empty(struct iwl_mvm *mvm,
          struct ieee80211_sta *sta, u8 tid)
{
 struct iwl_mvm_sta *mvmsta = iwl_mvm_sta_from_mac80211(sta);
 struct iwl_mvm_tid_data *tid_data = &mvmsta->tid_data[tid];
 struct ieee80211_vif *vif = mvmsta->vif;
 u16 normalized_ssn;

 lockdep_assert_held(&mvmsta->lock);

 if ((tid_data->state == IWL_AGG_ON ||
      tid_data->state == 128) &&
     iwl_mvm_tid_queued(mvm, tid_data) == 0) {





  ieee80211_sta_set_buffered(sta, tid, 0);
 }





 normalized_ssn = tid_data->ssn;
 if (mvm->trans->trans_cfg->gen2)
  normalized_ssn &= 0xff;

 if (normalized_ssn != tid_data->next_reclaimed)
  return;

 switch (tid_data->state) {
 case 129:
  IWL_DEBUG_TX_QUEUES(mvm,
        "Can continue addBA flow ssn = next_recl = %d\n",
        tid_data->next_reclaimed);
  tid_data->state = IWL_AGG_STARTING;
  ieee80211_start_tx_ba_cb_irqsafe(vif, sta->addr, tid);
  break;

 case 128:
  IWL_DEBUG_TX_QUEUES(mvm,
        "Can continue DELBA flow ssn = next_recl = %d\n",
        tid_data->next_reclaimed);
  tid_data->state = IWL_AGG_OFF;
  ieee80211_stop_tx_ba_cb_irqsafe(vif, sta->addr, tid);
  break;

 default:
  break;
 }
}
