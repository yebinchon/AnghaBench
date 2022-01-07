
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sta_id; } ;
struct iwl_mvm_vif {TYPE_2__ bcast_sta; TYPE_2__ mcast_sta; int color; int id; } ;
struct iwl_mvm_sta {scalar_t__ mac_id_n_color; } ;
struct iwl_mvm {TYPE_1__* fw; int mutex; int * fw_id_to_mac_id; } ;
struct ieee80211_sta {int dummy; } ;
struct TYPE_3__ {int ucode_capa; } ;


 int ARRAY_SIZE (int *) ;
 scalar_t__ FW_CMD_ID_AND_COLOR (int ,int ) ;
 scalar_t__ IS_ERR_OR_NULL (struct ieee80211_sta*) ;
 scalar_t__ IWL_MVM_INVALID_STA ;
 int IWL_UCODE_TLV_API_STA_TYPE ;
 int fw_has_api (int *,int ) ;
 int iwl_mvm_int_sta_modify_disable_tx (struct iwl_mvm*,struct iwl_mvm_vif*,TYPE_2__*,int) ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_mac80211 (struct ieee80211_sta*) ;
 int iwl_mvm_sta_modify_disable_tx_ap (struct iwl_mvm*,struct ieee80211_sta*,int) ;
 int lockdep_assert_held (int *) ;
 int lockdep_is_held (int *) ;
 struct ieee80211_sta* rcu_dereference_protected (int ,int ) ;

void iwl_mvm_modify_all_sta_disable_tx(struct iwl_mvm *mvm,
           struct iwl_mvm_vif *mvmvif,
           bool disable)
{
 struct ieee80211_sta *sta;
 struct iwl_mvm_sta *mvm_sta;
 int i;

 lockdep_assert_held(&mvm->mutex);


 for (i = 0; i < ARRAY_SIZE(mvm->fw_id_to_mac_id); i++) {
  sta = rcu_dereference_protected(mvm->fw_id_to_mac_id[i],
      lockdep_is_held(&mvm->mutex));
  if (IS_ERR_OR_NULL(sta))
   continue;

  mvm_sta = iwl_mvm_sta_from_mac80211(sta);
  if (mvm_sta->mac_id_n_color !=
      FW_CMD_ID_AND_COLOR(mvmvif->id, mvmvif->color))
   continue;

  iwl_mvm_sta_modify_disable_tx_ap(mvm, sta, disable);
 }

 if (!fw_has_api(&mvm->fw->ucode_capa, IWL_UCODE_TLV_API_STA_TYPE))
  return;


 if (mvmvif->mcast_sta.sta_id != IWL_MVM_INVALID_STA)
  iwl_mvm_int_sta_modify_disable_tx(mvm, mvmvif,
        &mvmvif->mcast_sta, disable);





 if (!disable && mvmvif->bcast_sta.sta_id != IWL_MVM_INVALID_STA)
  iwl_mvm_int_sta_modify_disable_tx(mvm, mvmvif,
        &mvmvif->bcast_sta, disable);
}
