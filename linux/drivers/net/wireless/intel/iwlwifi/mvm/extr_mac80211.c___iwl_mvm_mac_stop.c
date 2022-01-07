
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_mvm {int max_scans; scalar_t__* scan_uid_status; TYPE_1__* fw; int hw; int status; int roc_done_wk; int accu_radio_stats; int mutex; } ;
struct TYPE_2__ {int ucode_capa; } ;


 int IWL_MVM_STATUS_HW_RESTART_REQUESTED ;
 int IWL_MVM_STATUS_IN_HW_RESTART ;
 int IWL_UCODE_TLV_CAPA_UMAC_SCAN ;
 scalar_t__ WARN_ONCE (scalar_t__,char*,int) ;
 int flush_work (int *) ;
 scalar_t__ fw_has_capa (int *,int ) ;
 int ieee80211_iterate_interfaces (int ,int ,int ,struct iwl_mvm*) ;
 int iwl_mvm_async_handlers_purge (struct iwl_mvm*) ;
 int iwl_mvm_cleanup_iterator ;
 int iwl_mvm_del_aux_sta (struct iwl_mvm*) ;
 int iwl_mvm_stop_device (struct iwl_mvm*) ;
 int lockdep_assert_held (int *) ;
 int memset (int *,int ,int) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

void __iwl_mvm_mac_stop(struct iwl_mvm *mvm)
{
 lockdep_assert_held(&mvm->mutex);




 memset(&mvm->accu_radio_stats, 0, sizeof(mvm->accu_radio_stats));







 flush_work(&mvm->roc_done_wk);

 iwl_mvm_stop_device(mvm);

 iwl_mvm_async_handlers_purge(mvm);



 iwl_mvm_del_aux_sta(mvm);
 if (test_and_clear_bit(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status) ||
     test_and_clear_bit(IWL_MVM_STATUS_HW_RESTART_REQUESTED,
          &mvm->status))
  ieee80211_iterate_interfaces(mvm->hw, 0,
          iwl_mvm_cleanup_iterator, mvm);




 if (fw_has_capa(&mvm->fw->ucode_capa, IWL_UCODE_TLV_CAPA_UMAC_SCAN)) {
  int i;

  for (i = 0; i < mvm->max_scans; i++) {
   if (WARN_ONCE(mvm->scan_uid_status[i],
          "UMAC scan UID %d status was not cleaned\n",
          i))
    mvm->scan_uid_status[i] = 0;
  }
 }
}
