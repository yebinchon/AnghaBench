
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_8__ {int num; int arg; } ;
struct TYPE_6__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_4__ rsp; TYPE_2__ req; } ;
struct qlcnic_adapter {int portnum; TYPE_3__* recv_ctx; TYPE_1__* tx_ring; struct net_device* netdev; } ;
struct net_device {int dummy; } ;
struct TYPE_7__ {int context_id; } ;
struct TYPE_5__ {int ctx_id; } ;


 int BIT_1 ;
 int BIT_2 ;
 int QLCNIC_CMD_GET_STATISTICS ;
 int QLC_83XX_MAC_STAT_REGS ;
 int QLC_83XX_RX_STAT_REGS ;
 int QLC_83XX_STAT_MAC ;
 int QLC_83XX_STAT_RX ;
 int QLC_83XX_STAT_TX ;
 int QLC_83XX_TX_STAT_REGS ;
 int memset (int ,int ,int) ;
 int netdev_err (struct net_device*,char*) ;
 int * qlcnic_83xx_fill_stats (struct qlcnic_adapter*,struct qlcnic_cmd_args*,int *,int ,int*) ;
 int qlcnic_alloc_mbx_args (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int ) ;
 int qlcnic_free_mbx_args (struct qlcnic_cmd_args*) ;

void qlcnic_83xx_get_stats(struct qlcnic_adapter *adapter, u64 *data)
{
 struct qlcnic_cmd_args cmd;
 struct net_device *netdev = adapter->netdev;
 int ret = 0;

 ret = qlcnic_alloc_mbx_args(&cmd, adapter, QLCNIC_CMD_GET_STATISTICS);
 if (ret)
  return;

 cmd.req.arg[1] = BIT_1 | (adapter->tx_ring->ctx_id << 16);
 cmd.rsp.num = QLC_83XX_TX_STAT_REGS;
 data = qlcnic_83xx_fill_stats(adapter, &cmd, data,
          QLC_83XX_STAT_TX, &ret);
 if (ret) {
  netdev_err(netdev, "Error getting Tx stats\n");
  goto out;
 }

 cmd.req.arg[1] = BIT_2 | (adapter->portnum << 16);
 cmd.rsp.num = QLC_83XX_MAC_STAT_REGS;
 memset(cmd.rsp.arg, 0, sizeof(u32) * cmd.rsp.num);
 data = qlcnic_83xx_fill_stats(adapter, &cmd, data,
          QLC_83XX_STAT_MAC, &ret);
 if (ret) {
  netdev_err(netdev, "Error getting MAC stats\n");
  goto out;
 }

 cmd.req.arg[1] = adapter->recv_ctx->context_id << 16;
 cmd.rsp.num = QLC_83XX_RX_STAT_REGS;
 memset(cmd.rsp.arg, 0, sizeof(u32) * cmd.rsp.num);
 data = qlcnic_83xx_fill_stats(adapter, &cmd, data,
          QLC_83XX_STAT_RX, &ret);
 if (ret)
  netdev_err(netdev, "Error getting Rx stats\n");
out:
 qlcnic_free_mbx_args(&cmd);
}
