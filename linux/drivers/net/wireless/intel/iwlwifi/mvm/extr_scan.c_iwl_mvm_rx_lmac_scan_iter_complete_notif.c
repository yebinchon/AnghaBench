
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm {scalar_t__ sched_scan_pass_all; int hw; } ;
struct iwl_lmac_scan_complete_notif {int scanned_channels; int status; } ;


 int IWL_DEBUG_SCAN (struct iwl_mvm*,char*,...) ;
 scalar_t__ SCHED_SCAN_PASS_ALL_ENABLED ;
 scalar_t__ SCHED_SCAN_PASS_ALL_FOUND ;
 int ieee80211_sched_scan_results (int ) ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;

void iwl_mvm_rx_lmac_scan_iter_complete_notif(struct iwl_mvm *mvm,
           struct iwl_rx_cmd_buffer *rxb)
{
 struct iwl_rx_packet *pkt = rxb_addr(rxb);
 struct iwl_lmac_scan_complete_notif *notif = (void *)pkt->data;

 IWL_DEBUG_SCAN(mvm,
         "Scan offload iteration complete: status=0x%x scanned channels=%d\n",
         notif->status, notif->scanned_channels);

 if (mvm->sched_scan_pass_all == SCHED_SCAN_PASS_ALL_FOUND) {
  IWL_DEBUG_SCAN(mvm, "Pass all scheduled scan results found\n");
  ieee80211_sched_scan_results(mvm->hw);
  mvm->sched_scan_pass_all = SCHED_SCAN_PASS_ALL_ENABLED;
 }
}
