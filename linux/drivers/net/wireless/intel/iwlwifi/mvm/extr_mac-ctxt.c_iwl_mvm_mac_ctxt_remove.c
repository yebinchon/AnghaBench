
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_mvm_vif {int uploaded; int color; int id; } ;
struct iwl_mvm {TYPE_1__* hw; } ;
struct iwl_mac_ctx_cmd {void* action; void* id_and_color; } ;
struct ieee80211_vif {scalar_t__ type; int addr; } ;
typedef int cmd ;
struct TYPE_2__ {int flags; } ;


 int EIO ;
 int FW_CMD_ID_AND_COLOR (int ,int ) ;
 int FW_CTXT_ACTION_REMOVE ;
 int IEEE80211_HW_RX_INCLUDES_FCS ;
 int IWL_ERR (struct iwl_mvm*,char*,int) ;
 int MAC_CONTEXT_CMD ;
 scalar_t__ NL80211_IFTYPE_MONITOR ;
 scalar_t__ WARN_ONCE (int,char*,int ,int ) ;
 int __clear_bit (int ,int ) ;
 void* cpu_to_le32 (int ) ;
 int ieee80211_vif_type_p2p (struct ieee80211_vif*) ;
 int iwl_mvm_dealloc_snif_sta (struct iwl_mvm*) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_mac_ctx_cmd*) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int memset (struct iwl_mac_ctx_cmd*,int ,int) ;

int iwl_mvm_mac_ctxt_remove(struct iwl_mvm *mvm, struct ieee80211_vif *vif)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 struct iwl_mac_ctx_cmd cmd;
 int ret;

 if (WARN_ONCE(!mvmvif->uploaded, "Removing inactive MAC %pM/%d\n",
        vif->addr, ieee80211_vif_type_p2p(vif)))
  return -EIO;

 memset(&cmd, 0, sizeof(cmd));

 cmd.id_and_color = cpu_to_le32(FW_CMD_ID_AND_COLOR(mvmvif->id,
          mvmvif->color));
 cmd.action = cpu_to_le32(FW_CTXT_ACTION_REMOVE);

 ret = iwl_mvm_send_cmd_pdu(mvm, MAC_CONTEXT_CMD, 0,
       sizeof(cmd), &cmd);
 if (ret) {
  IWL_ERR(mvm, "Failed to remove MAC context: %d\n", ret);
  return ret;
 }

 mvmvif->uploaded = 0;

 if (vif->type == NL80211_IFTYPE_MONITOR) {
  __clear_bit(IEEE80211_HW_RX_INCLUDES_FCS, mvm->hw->flags);
  iwl_mvm_dealloc_snif_sta(mvm);
 }

 return 0;
}
