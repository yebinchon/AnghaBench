
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ state; size_t cur_sta_id; int dwork; } ;
struct iwl_mvm {int mutex; TYPE_2__ tdls_cs; int * fw_id_to_mac_id; } ;
struct TYPE_3__ {int dtim_period; int beacon_int; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; } ;
struct ieee80211_tdls_ch_sw_params {scalar_t__ action_code; int ch_sw_tm_ie; int tmpl_skb; int switch_timeout; int switch_time; int timestamp; int chandef; struct ieee80211_sta* sta; int status; } ;
struct ieee80211_sta {int tdls_initiator; int addr; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum iwl_tdls_channel_switch_type { ____Placeholder_iwl_tdls_channel_switch_type } iwl_tdls_channel_switch_type ;


 int IWL_DEBUG_TDLS (struct iwl_mvm*,char*,char const*,int ,int ) ;
 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 size_t IWL_MVM_INVALID_STA ;
 int IWL_MVM_TDLS_SW_IDLE ;
 scalar_t__ IWL_MVM_TDLS_SW_REQ_SENT ;
 int TDLS_MOVE_CH ;
 int TDLS_SEND_CHAN_SW_RESP_AND_MOVE_CH ;
 scalar_t__ WLAN_TDLS_CHANNEL_SWITCH_REQUEST ;
 scalar_t__ WLAN_TDLS_CHANNEL_SWITCH_RESPONSE ;
 int iwl_mvm_tdls_config_channel_switch (struct iwl_mvm*,struct ieee80211_vif*,int,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int iwl_mvm_tdls_update_cs_state (struct iwl_mvm*,int ) ;
 int lockdep_is_held (int *) ;
 int mod_delayed_work (int ,int *,int ) ;
 int msecs_to_jiffies (unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ieee80211_sta* rcu_dereference_protected (int ,int ) ;
 int system_wq ;

void
iwl_mvm_tdls_recv_channel_switch(struct ieee80211_hw *hw,
     struct ieee80211_vif *vif,
     struct ieee80211_tdls_ch_sw_params *params)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 enum iwl_tdls_channel_switch_type type;
 unsigned int delay;
 const char *action_str =
  params->action_code == WLAN_TDLS_CHANNEL_SWITCH_REQUEST ?
  "REQ" : "RESP";

 mutex_lock(&mvm->mutex);

 IWL_DEBUG_TDLS(mvm,
         "Received TDLS ch switch action %s from %pM status %d\n",
         action_str, params->sta->addr, params->status);





 if (params->action_code == WLAN_TDLS_CHANNEL_SWITCH_RESPONSE &&
     params->status != 0 &&
     mvm->tdls_cs.state == IWL_MVM_TDLS_SW_REQ_SENT &&
     mvm->tdls_cs.cur_sta_id != IWL_MVM_INVALID_STA) {
  struct ieee80211_sta *cur_sta;


  cur_sta = rcu_dereference_protected(
    mvm->fw_id_to_mac_id[mvm->tdls_cs.cur_sta_id],
    lockdep_is_held(&mvm->mutex));
  if (cur_sta == params->sta) {
   iwl_mvm_tdls_update_cs_state(mvm,
           IWL_MVM_TDLS_SW_IDLE);
   goto retry;
  }
 }

 type = (params->action_code == WLAN_TDLS_CHANNEL_SWITCH_REQUEST) ?
        TDLS_SEND_CHAN_SW_RESP_AND_MOVE_CH : TDLS_MOVE_CH;

 iwl_mvm_tdls_config_channel_switch(mvm, vif, type, params->sta->addr,
        params->sta->tdls_initiator, 0,
        params->chandef, params->timestamp,
        params->switch_time,
        params->switch_timeout,
        params->tmpl_skb,
        params->ch_sw_tm_ie);

retry:

 delay = vif->bss_conf.dtim_period * vif->bss_conf.beacon_int *
  1024 / 1000;
 mod_delayed_work(system_wq, &mvm->tdls_cs.dwork,
    msecs_to_jiffies(delay));
 mutex_unlock(&mvm->mutex);
}
