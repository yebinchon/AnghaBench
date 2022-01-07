
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int dummy; } ;


 int SCAN_OFFLOAD_PROBE_REQ_SIZE ;
 scalar_t__ iwl_mvm_rrm_scan_needed (struct iwl_mvm*) ;

__attribute__((used)) static int iwl_mvm_max_scan_ie_fw_cmd_room(struct iwl_mvm *mvm)
{
 int max_probe_len;

 max_probe_len = SCAN_OFFLOAD_PROBE_REQ_SIZE;


 max_probe_len -= 24 + 2;


 if (iwl_mvm_rrm_scan_needed(mvm))
  max_probe_len -= 3;

 return max_probe_len;
}
