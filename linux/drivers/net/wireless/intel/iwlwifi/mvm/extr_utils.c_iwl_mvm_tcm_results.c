
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_mvm_tcm_iter_data {int any_sent; struct iwl_mvm* mvm; } ;
struct iwl_mvm {int mutex; TYPE_1__* fw; int hw; } ;
struct TYPE_2__ {int ucode_capa; } ;


 int IEEE80211_IFACE_ITER_NORMAL ;
 int IWL_UCODE_TLV_CAPA_UMAC_SCAN ;
 scalar_t__ fw_has_capa (int *,int ) ;
 int ieee80211_iterate_active_interfaces (int ,int ,int ,struct iwl_mvm_tcm_iter_data*) ;
 int iwl_mvm_config_scan (struct iwl_mvm*) ;
 int iwl_mvm_tcm_iter ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void iwl_mvm_tcm_results(struct iwl_mvm *mvm)
{
 struct iwl_mvm_tcm_iter_data data = {
  .mvm = mvm,
  .any_sent = 0,
 };

 mutex_lock(&mvm->mutex);

 ieee80211_iterate_active_interfaces(
  mvm->hw, IEEE80211_IFACE_ITER_NORMAL,
  iwl_mvm_tcm_iter, &data);

 if (fw_has_capa(&mvm->fw->ucode_capa, IWL_UCODE_TLV_CAPA_UMAC_SCAN))
  iwl_mvm_config_scan(mvm);

 mutex_unlock(&mvm->mutex);
}
