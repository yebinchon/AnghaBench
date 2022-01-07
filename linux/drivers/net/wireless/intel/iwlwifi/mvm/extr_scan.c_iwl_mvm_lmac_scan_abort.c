
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct iwl_mvm {int dummy; } ;
struct iwl_host_cmd {int id; } ;


 scalar_t__ CAN_ABORT_STATUS ;
 int ENOENT ;
 int IWL_DEBUG_SCAN (struct iwl_mvm*,char*,scalar_t__) ;
 int SCAN_OFFLOAD_ABORT_CMD ;
 int iwl_mvm_send_cmd_status (struct iwl_mvm*,struct iwl_host_cmd*,scalar_t__*) ;

__attribute__((used)) static int iwl_mvm_lmac_scan_abort(struct iwl_mvm *mvm)
{
 int ret;
 struct iwl_host_cmd cmd = {
  .id = SCAN_OFFLOAD_ABORT_CMD,
 };
 u32 status = CAN_ABORT_STATUS;

 ret = iwl_mvm_send_cmd_status(mvm, &cmd, &status);
 if (ret)
  return ret;

 if (status != CAN_ABORT_STATUS) {







  IWL_DEBUG_SCAN(mvm, "SCAN OFFLOAD ABORT ret %d.\n", status);
  ret = -ENOENT;
 }

 return ret;
}
