
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm_sta {int dummy; } ;
struct iwl_mvm {int dummy; } ;


 scalar_t__ iwl_mvm_has_tlc_offload (struct iwl_mvm*) ;
 int rs_drv_tx_protection (struct iwl_mvm*,struct iwl_mvm_sta*,int) ;
 int rs_fw_tx_protection (struct iwl_mvm*,struct iwl_mvm_sta*,int) ;

int iwl_mvm_tx_protection(struct iwl_mvm *mvm, struct iwl_mvm_sta *mvmsta,
     bool enable)
{
 if (iwl_mvm_has_tlc_offload(mvm))
  return rs_fw_tx_protection(mvm, mvmsta, enable);
 else
  return rs_drv_tx_protection(mvm, mvmsta, enable);
}
