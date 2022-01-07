
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm {int hw; } ;


 int IWL_DEBUG_SCAN (struct iwl_mvm*,char*) ;
 int ieee80211_sched_scan_results (int ) ;

void iwl_mvm_rx_scan_match_found(struct iwl_mvm *mvm,
     struct iwl_rx_cmd_buffer *rxb)
{
 IWL_DEBUG_SCAN(mvm, "Scheduled scan results\n");
 ieee80211_sched_scan_results(mvm->hw);
}
