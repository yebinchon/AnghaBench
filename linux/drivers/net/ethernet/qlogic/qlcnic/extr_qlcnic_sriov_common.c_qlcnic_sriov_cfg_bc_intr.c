
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_3__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_1__ req; } ;
struct qlcnic_adapter {TYPE_2__* pdev; int state; } ;
struct TYPE_4__ {int dev; } ;


 int ENOMEM ;
 int QLCNIC_CMD_BC_EVENT_SETUP ;
 int QLCNIC_RCODE_SUCCESS ;
 int __QLCNIC_SRIOV_ENABLE ;
 int dev_err (int *,char*,char*,int) ;
 int qlcnic_83xx_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;
 scalar_t__ qlcnic_alloc_mbx_args (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int ) ;
 int qlcnic_free_mbx_args (struct qlcnic_cmd_args*) ;
 int test_bit (int ,int *) ;

int qlcnic_sriov_cfg_bc_intr(struct qlcnic_adapter *adapter, u8 enable)
{
 struct qlcnic_cmd_args cmd;
 int err;

 if (!test_bit(__QLCNIC_SRIOV_ENABLE, &adapter->state))
  return 0;

 if (qlcnic_alloc_mbx_args(&cmd, adapter, QLCNIC_CMD_BC_EVENT_SETUP))
  return -ENOMEM;

 if (enable)
  cmd.req.arg[1] = (1 << 4) | (1 << 5) | (1 << 6) | (1 << 7);

 err = qlcnic_83xx_issue_cmd(adapter, &cmd);

 if (err != QLCNIC_RCODE_SUCCESS) {
  dev_err(&adapter->pdev->dev,
   "Failed to %s bc events, err=%d\n",
   (enable ? "enable" : "disable"), err);
 }

 qlcnic_free_mbx_args(&cmd);
 return err;
}
