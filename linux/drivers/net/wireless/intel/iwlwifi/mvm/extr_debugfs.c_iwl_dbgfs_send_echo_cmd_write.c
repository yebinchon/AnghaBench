
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int mutex; } ;
typedef size_t ssize_t ;
typedef int loff_t ;


 int ECHO_CMD ;
 size_t EIO ;
 int iwl_mvm_firmware_running (struct iwl_mvm*) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t
iwl_dbgfs_send_echo_cmd_write(struct iwl_mvm *mvm, char *buf,
         size_t count, loff_t *ppos)
{
 int ret;

 if (!iwl_mvm_firmware_running(mvm))
  return -EIO;

 mutex_lock(&mvm->mutex);
 ret = iwl_mvm_send_cmd_pdu(mvm, ECHO_CMD, 0, 0, ((void*)0));
 mutex_unlock(&mvm->mutex);

 return ret ?: count;
}
