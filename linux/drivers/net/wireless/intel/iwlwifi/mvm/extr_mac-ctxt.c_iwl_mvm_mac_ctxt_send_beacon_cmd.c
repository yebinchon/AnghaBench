
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; void* data; } ;
struct iwl_mvm {int dummy; } ;
struct iwl_host_cmd {int* len; scalar_t__* dataflags; void** data; int flags; int id; } ;


 int BEACON_TEMPLATE_CMD ;
 int CMD_ASYNC ;
 scalar_t__ IWL_HCMD_DFL_DUP ;
 int iwl_mvm_send_cmd (struct iwl_mvm*,struct iwl_host_cmd*) ;

int iwl_mvm_mac_ctxt_send_beacon_cmd(struct iwl_mvm *mvm,
         struct sk_buff *beacon,
         void *data, int len)
{
 struct iwl_host_cmd cmd = {
  .id = BEACON_TEMPLATE_CMD,
  .flags = CMD_ASYNC,
 };

 cmd.len[0] = len;
 cmd.data[0] = data;
 cmd.dataflags[0] = 0;
 cmd.len[1] = beacon->len;
 cmd.data[1] = beacon->data;
 cmd.dataflags[1] = IWL_HCMD_DFL_DUP;

 return iwl_mvm_send_cmd(mvm, &cmd);
}
