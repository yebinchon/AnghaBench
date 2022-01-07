
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_mvm_vif {int color; int id; } ;
struct iwl_mvm {int mutex; } ;
struct iwl_chan_switch_te_cmd {int cs_delayed_bcn_count; int cs_mode; int cs_count; int tsf; int action; int mac_id; } ;
struct TYPE_2__ {int beacon_int; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; } ;
struct ieee80211_channel_switch {scalar_t__ delay; int block_tx; int count; int timestamp; } ;
typedef int cmd ;


 int CHANNEL_SWITCH_TIME_EVENT_CMD ;
 int DIV_ROUND_UP (scalar_t__,int ) ;
 int FW_CMD_ID_AND_COLOR (int ,int ) ;
 int FW_CTXT_ACTION_ADD ;
 int MAC_CONF_GROUP ;
 int WIDE_ID (int ,int ) ;
 int cpu_to_le32 (int ) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_chan_switch_te_cmd*) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int iwl_mvm_schedule_client_csa(struct iwl_mvm *mvm,
           struct ieee80211_vif *vif,
           struct ieee80211_channel_switch *chsw)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 struct iwl_chan_switch_te_cmd cmd = {
  .mac_id = cpu_to_le32(FW_CMD_ID_AND_COLOR(mvmvif->id,
         mvmvif->color)),
  .action = cpu_to_le32(FW_CTXT_ACTION_ADD),
  .tsf = cpu_to_le32(chsw->timestamp),
  .cs_count = chsw->count,
  .cs_mode = chsw->block_tx,
 };

 lockdep_assert_held(&mvm->mutex);

 if (chsw->delay)
  cmd.cs_delayed_bcn_count =
   DIV_ROUND_UP(chsw->delay, vif->bss_conf.beacon_int);

 return iwl_mvm_send_cmd_pdu(mvm,
        WIDE_ID(MAC_CONF_GROUP,
         CHANNEL_SWITCH_TIME_EVENT_CMD),
        0, sizeof(cmd), &cmd);
}
