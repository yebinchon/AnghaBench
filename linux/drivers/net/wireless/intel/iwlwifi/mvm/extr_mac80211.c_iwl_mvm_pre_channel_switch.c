
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct iwl_mvm_vif {int csa_failed; int csa_countdown; int csa_count; int csa_misbehave; int ps_disabled; int csa_work; int csa_target_freq; } ;
struct iwl_mvm {int mutex; TYPE_4__* fw; int csa_vif; int csa_tx_blocked_vif; int fwrt; } ;
struct TYPE_7__ {int beacon_int; } ;
struct ieee80211_vif {int type; TYPE_3__ bss_conf; int csa_active; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_6__ {TYPE_1__* chan; int center_freq1; } ;
struct ieee80211_channel_switch {int count; int block_tx; TYPE_2__ chandef; } ;
struct TYPE_8__ {int ucode_capa; } ;
struct TYPE_5__ {int center_freq; } ;


 int EBUSY ;
 int FW_DBG_TRIGGER_CHANNEL_SWITCH ;
 int IWL_DEBUG_MAC80211 (struct iwl_mvm*,char*,int ) ;
 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 int IWL_MAX_CSA_BLOCK_TX ;
 int IWL_UCODE_TLV_CAPA_CHANNEL_SWITCH_CMD ;


 int WARN_ONCE (int,char*) ;
 int fw_has_capa (int *,int ) ;
 int ieee80211_vif_to_wdev (struct ieee80211_vif*) ;
 int iwl_fw_dbg_trigger_simple_stop (int *,int ,int ) ;
 int iwl_mvm_old_pre_chan_sw_sta (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_channel_switch*) ;
 int iwl_mvm_power_update_ps (struct iwl_mvm*) ;
 int iwl_mvm_schedule_client_csa (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_channel_switch*) ;
 int iwl_mvm_teardown_tdls_peers (struct iwl_mvm*) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int lockdep_is_held (int *) ;
 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcu_assign_pointer (int ,struct ieee80211_vif*) ;
 struct ieee80211_vif* rcu_dereference_protected (int ,int ) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static int iwl_mvm_pre_channel_switch(struct ieee80211_hw *hw,
          struct ieee80211_vif *vif,
          struct ieee80211_channel_switch *chsw)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 struct ieee80211_vif *csa_vif;
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 int ret;

 mutex_lock(&mvm->mutex);

 mvmvif->csa_failed = 0;

 IWL_DEBUG_MAC80211(mvm, "pre CSA to freq %d\n",
      chsw->chandef.center_freq1);

 iwl_fw_dbg_trigger_simple_stop(&mvm->fwrt,
           ieee80211_vif_to_wdev(vif),
           FW_DBG_TRIGGER_CHANNEL_SWITCH);

 switch (vif->type) {
 case 129:
  csa_vif =
   rcu_dereference_protected(mvm->csa_vif,
        lockdep_is_held(&mvm->mutex));
  if (WARN_ONCE(csa_vif && csa_vif->csa_active,
         "Another CSA is already in progress")) {
   ret = -EBUSY;
   goto out_unlock;
  }


  if (rcu_dereference_protected(mvm->csa_tx_blocked_vif,
           lockdep_is_held(&mvm->mutex))) {
   ret = -EBUSY;
   goto out_unlock;
  }

  rcu_assign_pointer(mvm->csa_vif, vif);

  if (WARN_ONCE(mvmvif->csa_countdown,
         "Previous CSA countdown didn't complete")) {
   ret = -EBUSY;
   goto out_unlock;
  }

  mvmvif->csa_target_freq = chsw->chandef.chan->center_freq;

  break;
 case 128:
  if (chsw->block_tx) {




   if (!chsw->count ||
       chsw->count * vif->bss_conf.beacon_int >
       IWL_MAX_CSA_BLOCK_TX)
    schedule_delayed_work(&mvmvif->csa_work,
            msecs_to_jiffies(IWL_MAX_CSA_BLOCK_TX));
  }

  if (!fw_has_capa(&mvm->fw->ucode_capa,
     IWL_UCODE_TLV_CAPA_CHANNEL_SWITCH_CMD)) {
   ret = iwl_mvm_old_pre_chan_sw_sta(mvm, vif, chsw);
   if (ret)
    goto out_unlock;
  } else {
   iwl_mvm_schedule_client_csa(mvm, vif, chsw);
  }

  mvmvif->csa_count = chsw->count;
  mvmvif->csa_misbehave = 0;
  break;
 default:
  break;
 }

 mvmvif->ps_disabled = 1;

 ret = iwl_mvm_power_update_ps(mvm);
 if (ret)
  goto out_unlock;


 iwl_mvm_teardown_tdls_peers(mvm);

out_unlock:
 mutex_unlock(&mvm->mutex);

 return ret;
}
