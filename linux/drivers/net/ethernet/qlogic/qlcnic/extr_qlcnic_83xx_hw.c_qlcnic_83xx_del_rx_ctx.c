
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct qlcnic_recv_context {int context_id; int state; } ;
struct TYPE_3__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_1__ req; } ;
struct qlcnic_adapter {TYPE_2__* pdev; struct qlcnic_recv_context* recv_ctx; } ;
struct TYPE_4__ {int dev; } ;


 int QLCNIC_CMD_DESTROY_RX_CTX ;
 int QLCNIC_HOST_CTX_STATE_FREED ;
 int dev_err (int *,char*) ;
 scalar_t__ qlcnic_alloc_mbx_args (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int ) ;
 int qlcnic_free_mbx_args (struct qlcnic_cmd_args*) ;
 int qlcnic_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;
 int qlcnic_pf_set_interface_id_del_rx_ctx (struct qlcnic_adapter*,int*) ;
 scalar_t__ qlcnic_sriov_pf_check (struct qlcnic_adapter*) ;
 scalar_t__ qlcnic_sriov_vf_check (struct qlcnic_adapter*) ;

void qlcnic_83xx_del_rx_ctx(struct qlcnic_adapter *adapter)
{
 int err;
 u32 temp = 0;
 struct qlcnic_cmd_args cmd;
 struct qlcnic_recv_context *recv_ctx = adapter->recv_ctx;

 if (qlcnic_alloc_mbx_args(&cmd, adapter, QLCNIC_CMD_DESTROY_RX_CTX))
  return;

 if (qlcnic_sriov_pf_check(adapter) || qlcnic_sriov_vf_check(adapter))
  cmd.req.arg[0] |= (0x3 << 29);

 if (qlcnic_sriov_pf_check(adapter))
  qlcnic_pf_set_interface_id_del_rx_ctx(adapter, &temp);

 cmd.req.arg[1] = recv_ctx->context_id | temp;
 err = qlcnic_issue_cmd(adapter, &cmd);
 if (err)
  dev_err(&adapter->pdev->dev,
   "Failed to destroy rx ctx in firmware\n");

 recv_ctx->state = QLCNIC_HOST_CTX_STATE_FREED;
 qlcnic_free_mbx_args(&cmd);
}
