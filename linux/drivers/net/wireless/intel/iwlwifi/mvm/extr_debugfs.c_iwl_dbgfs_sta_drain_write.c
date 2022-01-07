
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_mvm_sta {int dummy; } ;
struct TYPE_2__ {scalar_t__ cur_fw_img; } ;
struct iwl_mvm {int mutex; TYPE_1__ fwrt; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int EINVAL ;
 int EIO ;
 int ENOENT ;
 int IWL_MVM_STATION_COUNT ;
 scalar_t__ IWL_UCODE_REGULAR ;
 scalar_t__ iwl_mvm_drain_sta (struct iwl_mvm*,struct iwl_mvm_sta*,int) ;
 int iwl_mvm_firmware_running (struct iwl_mvm*) ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_staid_protected (struct iwl_mvm*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sscanf (char*,char*,int*,int*) ;

__attribute__((used)) static ssize_t iwl_dbgfs_sta_drain_write(struct iwl_mvm *mvm, char *buf,
      size_t count, loff_t *ppos)
{
 struct iwl_mvm_sta *mvmsta;
 int sta_id, drain, ret;

 if (!iwl_mvm_firmware_running(mvm) ||
     mvm->fwrt.cur_fw_img != IWL_UCODE_REGULAR)
  return -EIO;

 if (sscanf(buf, "%d %d", &sta_id, &drain) != 2)
  return -EINVAL;
 if (sta_id < 0 || sta_id >= IWL_MVM_STATION_COUNT)
  return -EINVAL;
 if (drain < 0 || drain > 1)
  return -EINVAL;

 mutex_lock(&mvm->mutex);

 mvmsta = iwl_mvm_sta_from_staid_protected(mvm, sta_id);

 if (!mvmsta)
  ret = -ENOENT;
 else
  ret = iwl_mvm_drain_sta(mvm, mvmsta, drain) ? : count;

 mutex_unlock(&mvm->mutex);

 return ret;
}
