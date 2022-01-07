
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int conf; } ;
struct TYPE_4__ {TYPE_1__ dump; } ;
struct iwl_mvm {int ps_disabled; int rfkill_safe_init_done; int monitor_on; TYPE_2__ fwrt; scalar_t__ rx_ba_sessions; scalar_t__ vif_count; int hw; int last_bt_ci_cmd; int last_bt_notif; int * fw_key_table; int * p2p_device_vif; scalar_t__ scan_status; scalar_t__ cur_aid; } ;


 int FW_DBG_INVALID ;
 int ieee80211_iterate_interfaces (int ,int ,int ,struct iwl_mvm*) ;
 int ieee80211_remain_on_channel_expired (int ) ;
 int ieee80211_wake_queues (int ) ;
 int iwl_mvm_accu_radio_stats (struct iwl_mvm*) ;
 int iwl_mvm_cleanup_iterator ;
 int iwl_mvm_cleanup_roc_te (struct iwl_mvm*) ;
 int iwl_mvm_ftm_restart (struct iwl_mvm*) ;
 int iwl_mvm_reset_phy_ctxts (struct iwl_mvm*) ;
 int iwl_mvm_stop_device (struct iwl_mvm*) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void iwl_mvm_restart_cleanup(struct iwl_mvm *mvm)
{
 iwl_mvm_stop_device(mvm);

 mvm->cur_aid = 0;

 mvm->scan_status = 0;
 mvm->ps_disabled = 0;
 mvm->rfkill_safe_init_done = 0;


 iwl_mvm_cleanup_roc_te(mvm);
 ieee80211_remain_on_channel_expired(mvm->hw);

 iwl_mvm_ftm_restart(mvm);





 ieee80211_iterate_interfaces(mvm->hw, 0, iwl_mvm_cleanup_iterator, mvm);

 mvm->p2p_device_vif = ((void*)0);

 iwl_mvm_reset_phy_ctxts(mvm);
 memset(mvm->fw_key_table, 0, sizeof(mvm->fw_key_table));
 memset(&mvm->last_bt_notif, 0, sizeof(mvm->last_bt_notif));
 memset(&mvm->last_bt_ci_cmd, 0, sizeof(mvm->last_bt_ci_cmd));

 ieee80211_wake_queues(mvm->hw);

 mvm->vif_count = 0;
 mvm->rx_ba_sessions = 0;
 mvm->fwrt.dump.conf = FW_DBG_INVALID;
 mvm->monitor_on = 0;


 iwl_mvm_accu_radio_stats(mvm);
}
