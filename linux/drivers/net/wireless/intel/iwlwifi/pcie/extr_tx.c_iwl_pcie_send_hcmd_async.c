
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans {int dummy; } ;
struct iwl_host_cmd {int flags; int id; } ;


 int CMD_WANT_SKB ;
 int EINVAL ;
 int IWL_ERR (struct iwl_trans*,char*,int ,int) ;
 scalar_t__ WARN_ON (int) ;
 int iwl_get_cmd_string (struct iwl_trans*,int ) ;
 int iwl_pcie_enqueue_hcmd (struct iwl_trans*,struct iwl_host_cmd*) ;

__attribute__((used)) static int iwl_pcie_send_hcmd_async(struct iwl_trans *trans,
        struct iwl_host_cmd *cmd)
{
 int ret;


 if (WARN_ON(cmd->flags & CMD_WANT_SKB))
  return -EINVAL;

 ret = iwl_pcie_enqueue_hcmd(trans, cmd);
 if (ret < 0) {
  IWL_ERR(trans,
   "Error sending %s: enqueue_hcmd failed: %d\n",
   iwl_get_cmd_string(trans, cmd->id), ret);
  return ret;
 }
 return 0;
}
