
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {scalar_t__ ptk_icvlen; scalar_t__ ptk_ivlen; int fw_key_table; int status; } ;


 int IWL_MVM_SCAN_REGULAR ;
 int IWL_MVM_STATUS_IN_HW_RESTART ;
 int iwl_mvm_load_d3_fw (struct iwl_mvm*) ;
 int iwl_mvm_scan_stop (struct iwl_mvm*,int ,int) ;
 int iwl_mvm_stop_device (struct iwl_mvm*) ;
 int memset (int ,int ,int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int iwl_mvm_switch_to_d3(struct iwl_mvm *mvm)
{
 iwl_mvm_scan_stop(mvm, IWL_MVM_SCAN_REGULAR, 1);

 iwl_mvm_stop_device(mvm);
 set_bit(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status);


 memset(mvm->fw_key_table, 0, sizeof(mvm->fw_key_table));

 mvm->ptk_ivlen = 0;
 mvm->ptk_icvlen = 0;
 mvm->ptk_ivlen = 0;
 mvm->ptk_icvlen = 0;

 return iwl_mvm_load_d3_fw(mvm);
}
