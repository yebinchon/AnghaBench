
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_wowlan_status {int dummy; } ;
struct iwl_mvm {int dummy; } ;


 int IWL_ERR (struct iwl_mvm*,char*,int) ;
 int OFFLOADS_QUERY_CMD ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int ,int *) ;
 struct iwl_wowlan_status* iwl_mvm_send_wowlan_get_status (struct iwl_mvm*) ;

__attribute__((used)) static struct iwl_wowlan_status *
iwl_mvm_get_wakeup_status(struct iwl_mvm *mvm)
{
 int ret;


 ret = iwl_mvm_send_cmd_pdu(mvm, OFFLOADS_QUERY_CMD, 0, 0, ((void*)0));
 if (ret)
  IWL_ERR(mvm, "failed to query offload statistics (%d)\n", ret);

 return iwl_mvm_send_wowlan_get_status(mvm);
}
