
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm_sta {int dummy; } ;
struct iwl_mvm {int dummy; } ;


 int IWL_DEBUG_RATE (struct iwl_mvm*,char*) ;

int rs_fw_tx_protection(struct iwl_mvm *mvm, struct iwl_mvm_sta *mvmsta,
   bool enable)
{

 IWL_DEBUG_RATE(mvm, "tx protection - not implemented yet.\n");
 return 0;
}
