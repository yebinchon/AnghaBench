
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cur_fw_img; } ;
struct iwl_mvm {int mutex; TYPE_1__ fwrt; } ;
typedef size_t ssize_t ;
typedef int loff_t ;


 int CTDP_CMD_OPERATION_STOP ;
 size_t EIO ;
 size_t EOPNOTSUPP ;
 scalar_t__ IWL_UCODE_REGULAR ;
 int iwl_mvm_ctdp_command (struct iwl_mvm*,int ,int ) ;
 int iwl_mvm_firmware_running (struct iwl_mvm*) ;
 int iwl_mvm_is_ctdp_supported (struct iwl_mvm*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t iwl_dbgfs_stop_ctdp_write(struct iwl_mvm *mvm, char *buf,
      size_t count, loff_t *ppos)
{
 int ret;

 if (!iwl_mvm_is_ctdp_supported(mvm))
  return -EOPNOTSUPP;

 if (!iwl_mvm_firmware_running(mvm) ||
     mvm->fwrt.cur_fw_img != IWL_UCODE_REGULAR)
  return -EIO;

 mutex_lock(&mvm->mutex);
 ret = iwl_mvm_ctdp_command(mvm, CTDP_CMD_OPERATION_STOP, 0);
 mutex_unlock(&mvm->mutex);

 return ret ?: count;
}
