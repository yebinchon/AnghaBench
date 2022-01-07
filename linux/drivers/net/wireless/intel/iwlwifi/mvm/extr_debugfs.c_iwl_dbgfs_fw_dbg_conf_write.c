
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int mutex; int fwrt; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int EINVAL ;
 int EIO ;
 unsigned int FW_DBG_CONF_MAX ;
 scalar_t__ WARN_ON (int) ;
 int iwl_fw_start_dbg_conf (int *,unsigned int) ;
 int iwl_mvm_firmware_running (struct iwl_mvm*) ;
 int kstrtouint (char*,int ,unsigned int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t iwl_dbgfs_fw_dbg_conf_write(struct iwl_mvm *mvm,
        char *buf, size_t count,
        loff_t *ppos)
{
 unsigned int conf_id;
 int ret;

 if (!iwl_mvm_firmware_running(mvm))
  return -EIO;

 ret = kstrtouint(buf, 0, &conf_id);
 if (ret)
  return ret;

 if (WARN_ON(conf_id >= FW_DBG_CONF_MAX))
  return -EINVAL;

 mutex_lock(&mvm->mutex);
 ret = iwl_fw_start_dbg_conf(&mvm->fwrt, conf_id);
 mutex_unlock(&mvm->mutex);

 return ret ?: count;
}
