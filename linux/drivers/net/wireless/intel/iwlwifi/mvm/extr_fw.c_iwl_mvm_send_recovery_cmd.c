
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct iwl_mvm {int * error_recovery_buf; TYPE_2__* fw; } ;
struct iwl_host_cmd {int* len; TYPE_3__* resp_pkt; int * dataflags; int ** data; int flags; int id; } ;
struct iwl_fw_error_recovery_cmd {int buf_size; int flags; } ;
typedef int __le32 ;
struct TYPE_6__ {scalar_t__ data; } ;
struct TYPE_4__ {int error_log_size; } ;
struct TYPE_5__ {TYPE_1__ ucode_capa; } ;


 int CMD_WANT_SKB ;
 int ERROR_RECOVERY_UPDATE_DB ;
 int FW_ERROR_RECOVERY_CMD ;
 int IWL_ERR (struct iwl_mvm*,char*,int) ;
 int IWL_HCMD_DFL_NOCOPY ;
 int SYSTEM_GROUP ;
 int WIDE_ID (int ,int ) ;
 int cpu_to_le32 (int) ;
 int iwl_mvm_send_cmd (struct iwl_mvm*,struct iwl_host_cmd*) ;
 int kfree (int *) ;
 int le32_to_cpu (int ) ;

void iwl_mvm_send_recovery_cmd(struct iwl_mvm *mvm, u32 flags)
{
 u32 error_log_size = mvm->fw->ucode_capa.error_log_size;
 int ret;
 u32 resp;

 struct iwl_fw_error_recovery_cmd recovery_cmd = {
  .flags = cpu_to_le32(flags),
  .buf_size = 0,
 };
 struct iwl_host_cmd host_cmd = {
  .id = WIDE_ID(SYSTEM_GROUP, FW_ERROR_RECOVERY_CMD),
  .flags = CMD_WANT_SKB,
  .data = {&recovery_cmd, },
  .len = {sizeof(recovery_cmd), },
 };


 if (!error_log_size)
  return;

 if (flags & ERROR_RECOVERY_UPDATE_DB) {

  if (!mvm->error_recovery_buf)
   return;

  host_cmd.data[1] = mvm->error_recovery_buf;
  host_cmd.len[1] = error_log_size;
  host_cmd.dataflags[1] = IWL_HCMD_DFL_NOCOPY;
  recovery_cmd.buf_size = cpu_to_le32(error_log_size);
 }

 ret = iwl_mvm_send_cmd(mvm, &host_cmd);
 kfree(mvm->error_recovery_buf);
 mvm->error_recovery_buf = ((void*)0);

 if (ret) {
  IWL_ERR(mvm, "Failed to send recovery cmd %d\n", ret);
  return;
 }


 if (flags & ERROR_RECOVERY_UPDATE_DB) {
  resp = le32_to_cpu(*(__le32 *)host_cmd.resp_pkt->data);
  if (resp)
   IWL_ERR(mvm,
    "Failed to send recovery cmd blob was invalid %d\n",
    resp);
 }
}
