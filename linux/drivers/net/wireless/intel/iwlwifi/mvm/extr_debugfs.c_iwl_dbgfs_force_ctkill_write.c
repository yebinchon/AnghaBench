
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cur_fw_img; } ;
struct iwl_mvm {TYPE_1__ fwrt; } ;
typedef size_t ssize_t ;
typedef int loff_t ;


 size_t EIO ;
 scalar_t__ IWL_UCODE_REGULAR ;
 int iwl_mvm_enter_ctkill (struct iwl_mvm*) ;
 int iwl_mvm_firmware_running (struct iwl_mvm*) ;

__attribute__((used)) static ssize_t iwl_dbgfs_force_ctkill_write(struct iwl_mvm *mvm, char *buf,
         size_t count, loff_t *ppos)
{
 if (!iwl_mvm_firmware_running(mvm) ||
     mvm->fwrt.cur_fw_img != IWL_UCODE_REGULAR)
  return -EIO;

 iwl_mvm_enter_ctkill(mvm);

 return count;
}
