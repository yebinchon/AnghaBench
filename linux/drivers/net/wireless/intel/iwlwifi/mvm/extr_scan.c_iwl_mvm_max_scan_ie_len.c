
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int dummy; } ;


 int iwl_mvm_max_scan_ie_fw_cmd_room (struct iwl_mvm*) ;

int iwl_mvm_max_scan_ie_len(struct iwl_mvm *mvm)
{
 int max_ie_len = iwl_mvm_max_scan_ie_fw_cmd_room(mvm);
 return max_ie_len;
}
