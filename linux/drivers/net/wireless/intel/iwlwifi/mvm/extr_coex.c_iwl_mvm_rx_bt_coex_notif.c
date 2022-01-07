
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm {int last_bt_notif; } ;
struct iwl_bt_coex_profile_notif {int bt_activity_grading; int secondary_ch_lut; int primary_ch_lut; int bt_ci_compliance; } ;


 int IWL_DEBUG_COEX (struct iwl_mvm*,char*,...) ;
 int iwl_mvm_bt_coex_notif_handle (struct iwl_mvm*) ;
 int le32_to_cpu (int ) ;
 int memcpy (int *,struct iwl_bt_coex_profile_notif*,int) ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;

void iwl_mvm_rx_bt_coex_notif(struct iwl_mvm *mvm,
         struct iwl_rx_cmd_buffer *rxb)
{
 struct iwl_rx_packet *pkt = rxb_addr(rxb);
 struct iwl_bt_coex_profile_notif *notif = (void *)pkt->data;

 IWL_DEBUG_COEX(mvm, "BT Coex Notification received\n");
 IWL_DEBUG_COEX(mvm, "\tBT ci compliance %d\n", notif->bt_ci_compliance);
 IWL_DEBUG_COEX(mvm, "\tBT primary_ch_lut %d\n",
         le32_to_cpu(notif->primary_ch_lut));
 IWL_DEBUG_COEX(mvm, "\tBT secondary_ch_lut %d\n",
         le32_to_cpu(notif->secondary_ch_lut));
 IWL_DEBUG_COEX(mvm, "\tBT activity grading %d\n",
         le32_to_cpu(notif->bt_activity_grading));


 memcpy(&mvm->last_bt_notif, notif, sizeof(mvm->last_bt_notif));

 iwl_mvm_bt_coex_notif_handle(mvm);
}
