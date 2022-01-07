
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_mvm_vif {int monitor_active; int ps_disabled; int ap_ibss_active; int csa_countdown; int * phy_ctxt; int time_event_data; } ;
struct iwl_mvm {TYPE_1__* fw; int csa_tx_blocked_vif; int mutex; } ;
struct ieee80211_vif {int type; } ;
struct ieee80211_chanctx_conf {int dummy; } ;
struct TYPE_2__ {int ucode_capa; } ;


 int IWL_UCODE_TLV_CAPA_CHANNEL_SWITCH_CMD ;




 int fw_has_capa (int *,int ) ;
 int iwl_mvm_binding_remove_vif (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_mac_ctxt_changed (struct iwl_mvm*,struct ieee80211_vif*,int,int *) ;
 int iwl_mvm_modify_all_sta_disable_tx (struct iwl_mvm*,struct iwl_mvm_vif*,int) ;
 int iwl_mvm_power_update_mac (struct iwl_mvm*) ;
 int iwl_mvm_remove_time_event (struct iwl_mvm*,struct iwl_mvm_vif*,int *) ;
 int iwl_mvm_rm_snif_sta (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_update_quotas (struct iwl_mvm*,int,struct ieee80211_vif*) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int lockdep_assert_held (int *) ;
 int rcu_assign_pointer (int ,struct ieee80211_vif*) ;

__attribute__((used)) static void __iwl_mvm_unassign_vif_chanctx(struct iwl_mvm *mvm,
        struct ieee80211_vif *vif,
        struct ieee80211_chanctx_conf *ctx,
        bool switching_chanctx)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 struct ieee80211_vif *disabled_vif = ((void*)0);

 lockdep_assert_held(&mvm->mutex);

 iwl_mvm_remove_time_event(mvm, mvmvif, &mvmvif->time_event_data);

 switch (vif->type) {
 case 131:
  goto out;
 case 129:
  mvmvif->monitor_active = 0;
  mvmvif->ps_disabled = 0;
  iwl_mvm_rm_snif_sta(mvm, vif);
  break;
 case 130:

  if (!switching_chanctx || !mvmvif->ap_ibss_active)
   goto out;

  mvmvif->csa_countdown = 0;


  iwl_mvm_modify_all_sta_disable_tx(mvm, mvmvif, 1);


  rcu_assign_pointer(mvm->csa_tx_blocked_vif, vif);

  mvmvif->ap_ibss_active = 0;
  break;
 case 128:
  if (!switching_chanctx)
   break;

  disabled_vif = vif;

  if (!fw_has_capa(&mvm->fw->ucode_capa,
     IWL_UCODE_TLV_CAPA_CHANNEL_SWITCH_CMD))
   iwl_mvm_mac_ctxt_changed(mvm, vif, 1, ((void*)0));
  break;
 default:
  break;
 }

 iwl_mvm_update_quotas(mvm, 0, disabled_vif);
 iwl_mvm_binding_remove_vif(mvm, vif);

out:
 mvmvif->phy_ctxt = ((void*)0);
 iwl_mvm_power_update_mac(mvm);
}
