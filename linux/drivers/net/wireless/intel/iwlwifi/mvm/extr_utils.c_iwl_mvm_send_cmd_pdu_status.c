
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct iwl_mvm {int dummy; } ;
struct iwl_host_cmd {int data; int len; int id; } ;


 int iwl_mvm_send_cmd_status (struct iwl_mvm*,struct iwl_host_cmd*,int *) ;

int iwl_mvm_send_cmd_pdu_status(struct iwl_mvm *mvm, u32 id, u16 len,
    const void *data, u32 *status)
{
 struct iwl_host_cmd cmd = {
  .id = id,
  .len = { len, },
  .data = { data, },
 };

 return iwl_mvm_send_cmd_status(mvm, &cmd, status);
}
