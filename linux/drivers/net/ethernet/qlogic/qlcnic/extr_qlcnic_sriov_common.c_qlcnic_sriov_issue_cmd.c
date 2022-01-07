
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_cmd_args {scalar_t__ type; } ;
struct qlcnic_adapter {int dummy; } ;


 scalar_t__ QLC_83XX_MBX_CMD_NO_WAIT ;
 int __qlcnic_sriov_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;
 int qlcnic_sriov_async_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;

__attribute__((used)) static int qlcnic_sriov_issue_cmd(struct qlcnic_adapter *adapter,
      struct qlcnic_cmd_args *cmd)
{
 if (cmd->type == QLC_83XX_MBX_CMD_NO_WAIT)
  return qlcnic_sriov_async_issue_cmd(adapter, cmd);
 else
  return __qlcnic_sriov_issue_cmd(adapter, cmd);
}
