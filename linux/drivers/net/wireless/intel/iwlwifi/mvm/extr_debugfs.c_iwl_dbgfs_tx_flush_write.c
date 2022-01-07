
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ cur_fw_img; } ;
struct iwl_mvm {int mutex; TYPE_1__ fwrt; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int EINVAL ;
 int EIO ;
 int IWL_DEBUG_TX_QUEUES (struct iwl_mvm*,char*,int ) ;
 scalar_t__ IWL_UCODE_REGULAR ;
 int iwl_mvm_firmware_running (struct iwl_mvm*) ;
 scalar_t__ iwl_mvm_flush_sta_tids (struct iwl_mvm*,int ,int,int ) ;
 scalar_t__ iwl_mvm_flush_tx_path (struct iwl_mvm*,int ,int ) ;
 scalar_t__ iwl_mvm_has_new_tx_api (struct iwl_mvm*) ;
 scalar_t__ kstrtou32 (char*,int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t iwl_dbgfs_tx_flush_write(struct iwl_mvm *mvm, char *buf,
     size_t count, loff_t *ppos)
{
 int ret;
 u32 flush_arg;

 if (!iwl_mvm_firmware_running(mvm) ||
     mvm->fwrt.cur_fw_img != IWL_UCODE_REGULAR)
  return -EIO;

 if (kstrtou32(buf, 0, &flush_arg))
  return -EINVAL;

 if (iwl_mvm_has_new_tx_api(mvm)) {
  IWL_DEBUG_TX_QUEUES(mvm,
        "FLUSHING all tids queues on sta_id = %d\n",
        flush_arg);
  mutex_lock(&mvm->mutex);
  ret = iwl_mvm_flush_sta_tids(mvm, flush_arg, 0xFF, 0) ? : count;
  mutex_unlock(&mvm->mutex);
  return ret;
 }

 IWL_DEBUG_TX_QUEUES(mvm, "FLUSHING queues mask to flush = 0x%x\n",
       flush_arg);

 mutex_lock(&mvm->mutex);
 ret = iwl_mvm_flush_tx_path(mvm, flush_arg, 0) ? : count;
 mutex_unlock(&mvm->mutex);

 return ret;
}
