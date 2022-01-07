
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int mutex; } ;
struct iwl_host_cmd {int dummy; } ;


 int iwl_mvm_send_cmd (struct iwl_mvm*,struct iwl_host_cmd*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int iwl_mvm_fwrt_send_hcmd(void *ctx, struct iwl_host_cmd *host_cmd)
{
 struct iwl_mvm *mvm = (struct iwl_mvm *)ctx;
 int ret;

 mutex_lock(&mvm->mutex);
 ret = iwl_mvm_send_cmd(mvm, host_cmd);
 mutex_unlock(&mvm->mutex);

 return ret;
}
