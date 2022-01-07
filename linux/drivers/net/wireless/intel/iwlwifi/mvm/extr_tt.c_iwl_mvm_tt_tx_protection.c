
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm_sta {int tt_tx_protection; } ;
struct iwl_mvm {int fw_id_to_mac_id; } ;


 int ARRAY_SIZE (int ) ;
 int IWL_DEBUG_TEMP (struct iwl_mvm*,char*,char*) ;
 int IWL_ERR (struct iwl_mvm*,char*,char*) ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_staid_protected (struct iwl_mvm*,int) ;
 int iwl_mvm_tx_protection (struct iwl_mvm*,struct iwl_mvm_sta*,int) ;

__attribute__((used)) static void iwl_mvm_tt_tx_protection(struct iwl_mvm *mvm, bool enable)
{
 struct iwl_mvm_sta *mvmsta;
 int i, err;

 for (i = 0; i < ARRAY_SIZE(mvm->fw_id_to_mac_id); i++) {
  mvmsta = iwl_mvm_sta_from_staid_protected(mvm, i);
  if (!mvmsta)
   continue;

  if (enable == mvmsta->tt_tx_protection)
   continue;
  err = iwl_mvm_tx_protection(mvm, mvmsta, enable);
  if (err) {
   IWL_ERR(mvm, "Failed to %s Tx protection\n",
    enable ? "enable" : "disable");
  } else {
   IWL_DEBUG_TEMP(mvm, "%s Tx protection\n",
           enable ? "Enable" : "Disable");
   mvmsta->tt_tx_protection = enable;
  }
 }
}
