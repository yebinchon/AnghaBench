
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_tof_responder_config_cmd {int bssid; void* ctrl_ch_position; int bandwidth; int sta_id; int cmd_valid_fields; int channel_num; } ;
struct TYPE_4__ {int sta_id; } ;
struct iwl_mvm_vif {TYPE_2__ bcast_sta; } ;
struct iwl_mvm {int mutex; } ;
struct ieee80211_vif {int addr; } ;
struct cfg80211_chan_def {int width; TYPE_1__* chan; } ;
typedef int cmd ;
struct TYPE_3__ {int hw_value; } ;


 int EINVAL ;
 int ETH_ALEN ;
 int IWL_TOF_BW_20_HT ;
 int IWL_TOF_BW_20_LEGACY ;
 int IWL_TOF_BW_40 ;
 int IWL_TOF_BW_80 ;
 int IWL_TOF_RESPONDER_CMD_VALID_BSSID ;
 int IWL_TOF_RESPONDER_CMD_VALID_CHAN_INFO ;
 int IWL_TOF_RESPONDER_CMD_VALID_STA_ID ;
 int LOCATION_GROUP ;




 int TOF_RESPONDER_CONFIG_CMD ;
 int WARN_ON (int) ;
 int cpu_to_le32 (int) ;
 int iwl_cmd_id (int ,int ,int ) ;
 void* iwl_mvm_get_ctrl_pos (struct cfg80211_chan_def*) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_tof_responder_config_cmd*) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int lockdep_assert_held (int *) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int
iwl_mvm_ftm_responder_cmd(struct iwl_mvm *mvm,
     struct ieee80211_vif *vif,
     struct cfg80211_chan_def *chandef)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 struct iwl_tof_responder_config_cmd cmd = {
  .channel_num = chandef->chan->hw_value,
  .cmd_valid_fields =
   cpu_to_le32(IWL_TOF_RESPONDER_CMD_VALID_CHAN_INFO |
        IWL_TOF_RESPONDER_CMD_VALID_BSSID |
        IWL_TOF_RESPONDER_CMD_VALID_STA_ID),
  .sta_id = mvmvif->bcast_sta.sta_id,
 };

 lockdep_assert_held(&mvm->mutex);

 switch (chandef->width) {
 case 130:
  cmd.bandwidth = IWL_TOF_BW_20_LEGACY;
  break;
 case 131:
  cmd.bandwidth = IWL_TOF_BW_20_HT;
  break;
 case 129:
  cmd.bandwidth = IWL_TOF_BW_40;
  cmd.ctrl_ch_position = iwl_mvm_get_ctrl_pos(chandef);
  break;
 case 128:
  cmd.bandwidth = IWL_TOF_BW_80;
  cmd.ctrl_ch_position = iwl_mvm_get_ctrl_pos(chandef);
  break;
 default:
  WARN_ON(1);
  return -EINVAL;
 }

 memcpy(cmd.bssid, vif->addr, ETH_ALEN);

 return iwl_mvm_send_cmd_pdu(mvm, iwl_cmd_id(TOF_RESPONDER_CONFIG_CMD,
          LOCATION_GROUP, 0),
        0, sizeof(cmd), &cmd);
}
