
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct iwl_mvm_vif {int ap_ibss_active; int csa_bcn_pending; int ps_disabled; int monitor_active; struct iwl_mvm_phy_ctxt* phy_ctxt; } ;
struct iwl_mvm_phy_ctxt {int dummy; } ;
struct iwl_mvm {TYPE_1__* fw; int mutex; struct iwl_mvm_phy_ctxt* phy_ctxts; } ;
struct TYPE_4__ {int beacon_int; } ;
struct ieee80211_vif {int type; TYPE_2__ bss_conf; } ;
struct ieee80211_chanctx_conf {scalar_t__ drv_priv; } ;
struct TYPE_3__ {int ucode_capa; } ;


 int EINVAL ;
 int IWL_UCODE_TLV_CAPA_CHANNEL_SWITCH_CMD ;




 int fw_has_capa (int *,int ) ;
 int iwl_mvm_add_snif_sta (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_binding_add_vif (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_binding_remove_vif (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_mac_ctxt_changed (struct iwl_mvm*,struct ieee80211_vif*,int,int *) ;
 int iwl_mvm_power_update_mac (struct iwl_mvm*) ;
 int iwl_mvm_protect_session (struct iwl_mvm*,struct ieee80211_vif*,int,int,int,int) ;
 int iwl_mvm_update_quotas (struct iwl_mvm*,int,int *) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int __iwl_mvm_assign_vif_chanctx(struct iwl_mvm *mvm,
     struct ieee80211_vif *vif,
     struct ieee80211_chanctx_conf *ctx,
     bool switching_chanctx)
{
 u16 *phy_ctxt_id = (u16 *)ctx->drv_priv;
 struct iwl_mvm_phy_ctxt *phy_ctxt = &mvm->phy_ctxts[*phy_ctxt_id];
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 int ret;

 lockdep_assert_held(&mvm->mutex);

 mvmvif->phy_ctxt = phy_ctxt;

 switch (vif->type) {
 case 130:

  if (switching_chanctx) {
   mvmvif->ap_ibss_active = 1;
   break;
  }

 case 131:




  ret = 0;
  goto out;
 case 128:
  mvmvif->csa_bcn_pending = 0;
  break;
 case 129:

  mvmvif->ps_disabled = 1;
  break;
 default:
  ret = -EINVAL;
  goto out;
 }

 ret = iwl_mvm_binding_add_vif(mvm, vif);
 if (ret)
  goto out;





 iwl_mvm_power_update_mac(mvm);





 if (vif->type == 129) {
  mvmvif->monitor_active = 1;
  ret = iwl_mvm_update_quotas(mvm, 0, ((void*)0));
  if (ret)
   goto out_remove_binding;

  ret = iwl_mvm_add_snif_sta(mvm, vif);
  if (ret)
   goto out_remove_binding;

 }


 if (vif->type == 130) {
  iwl_mvm_update_quotas(mvm, 0, ((void*)0));
  iwl_mvm_mac_ctxt_changed(mvm, vif, 0, ((void*)0));
 }

 if (switching_chanctx && vif->type == 128) {
  mvmvif->csa_bcn_pending = 1;

  if (!fw_has_capa(&mvm->fw->ucode_capa,
     IWL_UCODE_TLV_CAPA_CHANNEL_SWITCH_CMD)) {
   u32 duration = 3 * vif->bss_conf.beacon_int;




   iwl_mvm_protect_session(mvm, vif, duration, duration,
      vif->bss_conf.beacon_int / 2,
      1);
  }

  iwl_mvm_update_quotas(mvm, 0, ((void*)0));
 }

 goto out;

out_remove_binding:
 iwl_mvm_binding_remove_vif(mvm, vif);
 iwl_mvm_power_update_mac(mvm);
out:
 if (ret)
  mvmvif->phy_ctxt = ((void*)0);
 return ret;
}
