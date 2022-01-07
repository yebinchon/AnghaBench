
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int num; int * arg; } ;
struct TYPE_4__ {int num; int * arg; } ;
struct qlcnic_cmd_args {scalar_t__ op_type; TYPE_3__ rsp; TYPE_1__ req; } ;
struct qlcnic_adapter {TYPE_2__* pdev; } ;
struct TYPE_5__ {int dev; } ;


 scalar_t__ QLC_83XX_MBX_POST_BC_OP ;
 int dev_info (int *,char*,int) ;
 int pr_info (char*,...) ;

void qlcnic_dump_mbx(struct qlcnic_adapter *adapter,
       struct qlcnic_cmd_args *cmd)
{
 int i;

 if (cmd->op_type == QLC_83XX_MBX_POST_BC_OP)
  return;

 dev_info(&adapter->pdev->dev,
   "Host MBX regs(%d)\n", cmd->req.num);
 for (i = 0; i < cmd->req.num; i++) {
  if (i && !(i % 8))
   pr_info("\n");
  pr_info("%08x ", cmd->req.arg[i]);
 }
 pr_info("\n");
 dev_info(&adapter->pdev->dev,
   "FW MBX regs(%d)\n", cmd->rsp.num);
 for (i = 0; i < cmd->rsp.num; i++) {
  if (i && !(i % 8))
   pr_info("\n");
  pr_info("%08x ", cmd->rsp.arg[i]);
 }
 pr_info("\n");
}
