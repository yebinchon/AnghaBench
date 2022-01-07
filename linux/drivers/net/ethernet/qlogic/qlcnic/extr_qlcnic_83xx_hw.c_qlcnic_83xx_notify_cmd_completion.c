
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_cmd_args {scalar_t__ type; int completion; int rsp_status; } ;
struct qlcnic_adapter {int dummy; } ;


 scalar_t__ QLC_83XX_MBX_CMD_NO_WAIT ;
 int QLC_83XX_MBX_RESPONSE_ARRIVED ;
 int atomic_set (int *,int ) ;
 int complete (int *) ;
 int kfree (struct qlcnic_cmd_args*) ;
 int qlcnic_free_mbx_args (struct qlcnic_cmd_args*) ;

__attribute__((used)) static inline void
qlcnic_83xx_notify_cmd_completion(struct qlcnic_adapter *adapter,
      struct qlcnic_cmd_args *cmd)
{
 atomic_set(&cmd->rsp_status, QLC_83XX_MBX_RESPONSE_ARRIVED);

 if (cmd->type == QLC_83XX_MBX_CMD_NO_WAIT) {
  qlcnic_free_mbx_args(cmd);
  kfree(cmd);
  return;
 }
 complete(&cmd->completion);
}
