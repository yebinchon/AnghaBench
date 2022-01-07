
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlcnic_host_tx_ring {int ctx_id; } ;
struct TYPE_3__ {int * arg; } ;
struct qlcnic_cmd_args {TYPE_1__ req; } ;
struct qlcnic_adapter {TYPE_2__* pdev; } ;
struct TYPE_4__ {int dev; } ;


 int QLCNIC_CMD_DESTROY_TX_CTX ;
 int dev_err (int *,char*) ;
 int qlcnic_alloc_mbx_args (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int ) ;
 int qlcnic_free_mbx_args (struct qlcnic_cmd_args*) ;
 scalar_t__ qlcnic_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;

void qlcnic_82xx_fw_cmd_del_tx_ctx(struct qlcnic_adapter *adapter,
       struct qlcnic_host_tx_ring *tx_ring)
{
 struct qlcnic_cmd_args cmd;
 int ret;

 ret = qlcnic_alloc_mbx_args(&cmd, adapter, QLCNIC_CMD_DESTROY_TX_CTX);
 if (ret)
  return;

 cmd.req.arg[1] = tx_ring->ctx_id;
 if (qlcnic_issue_cmd(adapter, &cmd))
  dev_err(&adapter->pdev->dev,
   "Failed to destroy tx ctx in firmware\n");
 qlcnic_free_mbx_args(&cmd);
}
