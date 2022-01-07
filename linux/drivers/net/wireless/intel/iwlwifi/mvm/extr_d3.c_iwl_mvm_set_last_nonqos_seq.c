
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_nonqos_seq_query_cmd {int value; int mac_id_n_color; int get_set_flag; } ;
struct iwl_mvm_vif {int seqno_valid; int seqno; int color; int id; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
typedef int query_cmd ;


 int FW_CMD_ID_AND_COLOR (int ,int ) ;
 int IWL_ERR (struct iwl_mvm*,char*) ;
 int IWL_NONQOS_SEQ_SET ;
 int NON_QOS_TX_COUNTER_CMD ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 scalar_t__ iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_nonqos_seq_query_cmd*) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;

void iwl_mvm_set_last_nonqos_seq(struct iwl_mvm *mvm, struct ieee80211_vif *vif)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 struct iwl_nonqos_seq_query_cmd query_cmd = {
  .get_set_flag = cpu_to_le32(IWL_NONQOS_SEQ_SET),
  .mac_id_n_color =
   cpu_to_le32(FW_CMD_ID_AND_COLOR(mvmvif->id,
       mvmvif->color)),
  .value = cpu_to_le16(mvmvif->seqno),
 };


 if (!mvmvif->seqno_valid)
  return;

 mvmvif->seqno_valid = 0;

 if (iwl_mvm_send_cmd_pdu(mvm, NON_QOS_TX_COUNTER_CMD, 0,
     sizeof(query_cmd), &query_cmd))
  IWL_ERR(mvm, "failed to set non-QoS seqno\n");
}
