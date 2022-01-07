
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlcnic_recv_context {scalar_t__ state; int context_id; } ;
struct TYPE_3__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_1__ req; } ;
struct qlcnic_adapter {TYPE_2__* pdev; struct qlcnic_recv_context* recv_ctx; } ;
struct TYPE_4__ {int dev; } ;


 int EIO ;
 int QLCNIC_CMD_SET_MTU ;
 scalar_t__ QLCNIC_HOST_CTX_STATE_ACTIVE ;
 int dev_err (int *,char*) ;
 int qlcnic_alloc_mbx_args (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int ) ;
 int qlcnic_free_mbx_args (struct qlcnic_cmd_args*) ;
 int qlcnic_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;

int
qlcnic_fw_cmd_set_mtu(struct qlcnic_adapter *adapter, int mtu)
{
 int err = 0;
 struct qlcnic_cmd_args cmd;
 struct qlcnic_recv_context *recv_ctx = adapter->recv_ctx;

 if (recv_ctx->state != QLCNIC_HOST_CTX_STATE_ACTIVE)
  return err;
 err = qlcnic_alloc_mbx_args(&cmd, adapter, QLCNIC_CMD_SET_MTU);
 if (err)
  return err;

 cmd.req.arg[1] = recv_ctx->context_id;
 cmd.req.arg[2] = mtu;

 err = qlcnic_issue_cmd(adapter, &cmd);
 if (err) {
  dev_err(&adapter->pdev->dev, "Failed to set mtu\n");
  err = -EIO;
 }
 qlcnic_free_mbx_args(&cmd);
 return err;
}
