
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_1__ req; int type; } ;
struct qlcnic_adapter {TYPE_2__* recv_ctx; } ;
struct TYPE_4__ {scalar_t__ state; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int QLCNIC_CMD_CONFIGURE_MAC_RX_MODE ;
 scalar_t__ QLCNIC_HOST_CTX_STATE_FREED ;
 int QLC_83XX_MBX_CMD_NO_WAIT ;
 int VPORT_MISS_MODE_ACCEPT_ALL ;
 int kfree (struct qlcnic_cmd_args*) ;
 struct qlcnic_cmd_args* kzalloc (int,int ) ;
 int qlcnic_83xx_set_interface_id_promisc (struct qlcnic_adapter*,int*) ;
 scalar_t__ qlcnic_84xx_check (struct qlcnic_adapter*) ;
 int qlcnic_alloc_mbx_args (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int ) ;
 int qlcnic_free_mbx_args (struct qlcnic_cmd_args*) ;
 int qlcnic_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;
 scalar_t__ qlcnic_sriov_pf_check (struct qlcnic_adapter*) ;

int qlcnic_83xx_nic_set_promisc(struct qlcnic_adapter *adapter, u32 mode)
{
 struct qlcnic_cmd_args *cmd = ((void*)0);
 u32 temp = 0;
 int err;

 if (adapter->recv_ctx->state == QLCNIC_HOST_CTX_STATE_FREED)
  return -EIO;

 cmd = kzalloc(sizeof(*cmd), GFP_ATOMIC);
 if (!cmd)
  return -ENOMEM;

 err = qlcnic_alloc_mbx_args(cmd, adapter,
        QLCNIC_CMD_CONFIGURE_MAC_RX_MODE);
 if (err)
  goto out;

 cmd->type = QLC_83XX_MBX_CMD_NO_WAIT;
 qlcnic_83xx_set_interface_id_promisc(adapter, &temp);

 if (qlcnic_84xx_check(adapter) && qlcnic_sriov_pf_check(adapter))
  mode = VPORT_MISS_MODE_ACCEPT_ALL;

 cmd->req.arg[1] = mode | temp;
 err = qlcnic_issue_cmd(adapter, cmd);
 if (!err)
  return err;

 qlcnic_free_mbx_args(cmd);

out:
 kfree(cmd);
 return err;
}
