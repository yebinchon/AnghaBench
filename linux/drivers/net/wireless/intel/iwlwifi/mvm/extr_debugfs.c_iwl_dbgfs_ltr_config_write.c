
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int mutex; } ;
struct iwl_ltr_config_cmd {int * ltr_cfg_values; int static_short; int static_long; int flags; int member_0; } ;
typedef size_t ssize_t ;
typedef int ltr_config ;
typedef int loff_t ;


 size_t EINVAL ;
 size_t EIO ;
 int IWL_ERR (struct iwl_mvm*,char*) ;
 int LTR_CONFIG ;
 int iwl_mvm_firmware_running (struct iwl_mvm*) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_ltr_config_cmd*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sscanf (char*,char*,int *,int *,int *,int *,int *,int *,int *) ;

__attribute__((used)) static ssize_t
iwl_dbgfs_ltr_config_write(struct iwl_mvm *mvm,
      char *buf, size_t count, loff_t *ppos)
{
 int ret;
 struct iwl_ltr_config_cmd ltr_config = {0};

 if (!iwl_mvm_firmware_running(mvm))
  return -EIO;

 if (sscanf(buf, "%x,%x,%x,%x,%x,%x,%x",
     &ltr_config.flags,
     &ltr_config.static_long,
     &ltr_config.static_short,
     &ltr_config.ltr_cfg_values[0],
     &ltr_config.ltr_cfg_values[1],
     &ltr_config.ltr_cfg_values[2],
     &ltr_config.ltr_cfg_values[3]) != 7) {
  return -EINVAL;
 }

 mutex_lock(&mvm->mutex);
 ret = iwl_mvm_send_cmd_pdu(mvm, LTR_CONFIG, 0, sizeof(ltr_config),
       &ltr_config);
 mutex_unlock(&mvm->mutex);

 if (ret)
  IWL_ERR(mvm, "failed to send ltr configuration cmd\n");

 return ret ?: count;
}
