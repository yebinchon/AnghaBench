
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlcnic_cmd_args {int dummy; } ;
struct qlcnic_back_channel {int dummy; } ;
struct qlcnic_adapter {scalar_t__ need_fw_reset; TYPE_2__* ahw; } ;
struct TYPE_4__ {TYPE_1__* sriov; } ;
struct TYPE_3__ {struct qlcnic_back_channel bc; } ;


 int EIO ;
 int qlcnic_sriov_schedule_async_cmd (struct qlcnic_back_channel*,struct qlcnic_cmd_args*) ;

__attribute__((used)) static int qlcnic_sriov_async_issue_cmd(struct qlcnic_adapter *adapter,
     struct qlcnic_cmd_args *cmd)
{

 struct qlcnic_back_channel *bc = &adapter->ahw->sriov->bc;

 if (adapter->need_fw_reset)
  return -EIO;

 qlcnic_sriov_schedule_async_cmd(bc, cmd);

 return 0;
}
