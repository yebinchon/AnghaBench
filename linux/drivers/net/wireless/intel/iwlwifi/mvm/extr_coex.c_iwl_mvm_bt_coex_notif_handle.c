
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct iwl_mvm {scalar_t__ bt_force_ant_mode; int last_bt_ci_cmd; int hw; int last_bt_notif; } ;
struct iwl_bt_iterator_data {struct ieee80211_chanctx_conf* secondary; struct ieee80211_chanctx_conf* primary; int * notif; struct iwl_mvm* mvm; } ;
struct iwl_bt_coex_ci_cmd {void* secondary_ch_phy_id; void* bt_secondary_ci; void* primary_ch_phy_id; void* bt_primary_ci; } ;
struct TYPE_4__ {scalar_t__ width; scalar_t__ center_freq1; TYPE_1__* chan; } ;
struct ieee80211_chanctx_conf {scalar_t__ drv_priv; TYPE_2__ def; } ;
typedef int cmd ;
struct TYPE_3__ {scalar_t__ center_freq; size_t hw_value; } ;


 int BT_COEX_CI ;
 scalar_t__ BT_FORCE_ANT_DIS ;
 int IEEE80211_IFACE_ITER_NORMAL ;
 int IWL_ERR (struct iwl_mvm*,char*) ;
 scalar_t__ NL80211_CHAN_WIDTH_40 ;
 scalar_t__ WARN_ON (int) ;
 void* cpu_to_le32 (int ) ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,struct iwl_bt_iterator_data*) ;
 void*** iwl_ci_mask ;
 int iwl_mvm_bt_coex_tcm_based_ci (struct iwl_mvm*,struct iwl_bt_iterator_data*) ;
 int iwl_mvm_bt_notif_iterator ;
 scalar_t__ iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_bt_coex_ci_cmd*) ;
 scalar_t__ memcmp (struct iwl_bt_coex_ci_cmd*,int *,int) ;
 int memcpy (int *,struct iwl_bt_coex_ci_cmd*,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void iwl_mvm_bt_coex_notif_handle(struct iwl_mvm *mvm)
{
 struct iwl_bt_iterator_data data = {
  .mvm = mvm,
  .notif = &mvm->last_bt_notif,
 };
 struct iwl_bt_coex_ci_cmd cmd = {};
 u8 ci_bw_idx;


 if (unlikely(mvm->bt_force_ant_mode != BT_FORCE_ANT_DIS))
  return;

 rcu_read_lock();
 ieee80211_iterate_active_interfaces_atomic(
     mvm->hw, IEEE80211_IFACE_ITER_NORMAL,
     iwl_mvm_bt_notif_iterator, &data);

 iwl_mvm_bt_coex_tcm_based_ci(mvm, &data);

 if (data.primary) {
  struct ieee80211_chanctx_conf *chan = data.primary;
  if (WARN_ON(!chan->def.chan)) {
   rcu_read_unlock();
   return;
  }

  if (chan->def.width < NL80211_CHAN_WIDTH_40) {
   ci_bw_idx = 0;
  } else {
   if (chan->def.center_freq1 >
       chan->def.chan->center_freq)
    ci_bw_idx = 2;
   else
    ci_bw_idx = 1;
  }

  cmd.bt_primary_ci =
   iwl_ci_mask[chan->def.chan->hw_value][ci_bw_idx];
  cmd.primary_ch_phy_id =
   cpu_to_le32(*((u16 *)data.primary->drv_priv));
 }

 if (data.secondary) {
  struct ieee80211_chanctx_conf *chan = data.secondary;
  if (WARN_ON(!data.secondary->def.chan)) {
   rcu_read_unlock();
   return;
  }

  if (chan->def.width < NL80211_CHAN_WIDTH_40) {
   ci_bw_idx = 0;
  } else {
   if (chan->def.center_freq1 >
       chan->def.chan->center_freq)
    ci_bw_idx = 2;
   else
    ci_bw_idx = 1;
  }

  cmd.bt_secondary_ci =
   iwl_ci_mask[chan->def.chan->hw_value][ci_bw_idx];
  cmd.secondary_ch_phy_id =
   cpu_to_le32(*((u16 *)data.secondary->drv_priv));
 }

 rcu_read_unlock();


 if (memcmp(&cmd, &mvm->last_bt_ci_cmd, sizeof(cmd))) {
  if (iwl_mvm_send_cmd_pdu(mvm, BT_COEX_CI, 0,
      sizeof(cmd), &cmd))
   IWL_ERR(mvm, "Failed to send BT_CI cmd\n");
  memcpy(&mvm->last_bt_ci_cmd, &cmd, sizeof(cmd));
 }
}
