
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct qlcnic_nic_intr_coalesce {int rx_time_us; int rx_packets; int flag; } ;
struct TYPE_6__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_3__ req; } ;
struct qlcnic_adapter {int netdev; TYPE_2__* recv_ctx; TYPE_1__* ahw; } ;
struct TYPE_5__ {int context_id; } ;
struct TYPE_4__ {struct qlcnic_nic_intr_coalesce coal; } ;


 int QLCNIC_CMD_CONFIG_INTR_COAL ;
 int QLCNIC_INTR_COAL_TYPE_RX ;
 int QLCNIC_RCODE_SUCCESS ;
 int netdev_err (int ,char*) ;
 int qlcnic_alloc_mbx_args (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int ) ;
 int qlcnic_free_mbx_args (struct qlcnic_cmd_args*) ;
 int qlcnic_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;

__attribute__((used)) static int qlcnic_83xx_set_rx_intr_coal(struct qlcnic_adapter *adapter)
{
 struct qlcnic_nic_intr_coalesce *coal = &adapter->ahw->coal;
 struct qlcnic_cmd_args cmd;
 u16 temp;
 int err;

 err = qlcnic_alloc_mbx_args(&cmd, adapter, QLCNIC_CMD_CONFIG_INTR_COAL);
 if (err)
  return err;

 temp = adapter->recv_ctx->context_id;
 cmd.req.arg[1] = QLCNIC_INTR_COAL_TYPE_RX | temp << 16;
 temp = coal->rx_time_us;
 cmd.req.arg[2] = coal->rx_packets | temp << 16;
 cmd.req.arg[3] = coal->flag;

 err = qlcnic_issue_cmd(adapter, &cmd);
 if (err != QLCNIC_RCODE_SUCCESS)
  netdev_err(adapter->netdev,
      "failed to set interrupt coalescing parameters\n");

 qlcnic_free_mbx_args(&cmd);

 return err;
}
