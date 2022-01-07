
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int trans; int mutex; int d3_test_active; } ;
struct iwl_host_cmd {int flags; } ;


 int CMD_ASYNC ;
 int CMD_WANT_SKB ;
 int EIO ;
 int ERFKILL ;
 scalar_t__ WARN_ON (int ) ;
 int iwl_trans_send_cmd (int ,struct iwl_host_cmd*) ;
 int lockdep_assert_held (int *) ;

int iwl_mvm_send_cmd(struct iwl_mvm *mvm, struct iwl_host_cmd *cmd)
{
 int ret;
 if (!(cmd->flags & CMD_ASYNC))
  lockdep_assert_held(&mvm->mutex);

 ret = iwl_trans_send_cmd(mvm->trans, cmd);






 if (cmd->flags & CMD_WANT_SKB)
  return ret;


 if (!ret || ret == -ERFKILL)
  return 0;
 return ret;
}
