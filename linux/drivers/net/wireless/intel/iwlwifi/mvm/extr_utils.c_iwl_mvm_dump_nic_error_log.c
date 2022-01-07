
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_mvm {int fwrt; TYPE_2__* trans; } ;
struct TYPE_3__ {scalar_t__* lmac_error_event_table; } ;
struct TYPE_4__ {TYPE_1__ dbg; int status; } ;


 int IWL_ERR (struct iwl_mvm*,char*) ;
 int STATUS_DEVICE_ENABLED ;
 int iwl_fw_error_print_fseq_regs (int *) ;
 int iwl_mvm_dump_lmac_error_log (struct iwl_mvm*,int) ;
 int iwl_mvm_dump_umac_error_log (struct iwl_mvm*) ;
 int test_bit (int ,int *) ;

void iwl_mvm_dump_nic_error_log(struct iwl_mvm *mvm)
{
 if (!test_bit(STATUS_DEVICE_ENABLED, &mvm->trans->status)) {
  IWL_ERR(mvm,
   "DEVICE_ENABLED bit is not set. Aborting dump.\n");
  return;
 }

 iwl_mvm_dump_lmac_error_log(mvm, 0);

 if (mvm->trans->dbg.lmac_error_event_table[1])
  iwl_mvm_dump_lmac_error_log(mvm, 1);

 iwl_mvm_dump_umac_error_log(mvm);

 iwl_fw_error_print_fseq_regs(&mvm->fwrt);
}
