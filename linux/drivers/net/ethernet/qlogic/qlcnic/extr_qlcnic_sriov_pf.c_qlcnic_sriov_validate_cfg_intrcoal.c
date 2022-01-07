
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct qlcnic_vf_info {int rx_ctx_id; int tx_ctx_id; } ;
struct qlcnic_nic_intr_coalesce {int rx_packets; int rx_time_us; int tx_packets; int tx_time_us; } ;
struct TYPE_4__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_2__ req; } ;
struct qlcnic_adapter {int netdev; TYPE_1__* ahw; } ;
struct TYPE_3__ {struct qlcnic_nic_intr_coalesce coal; } ;


 int EINVAL ;


 int QLC_INTR_COAL_TYPE_MASK ;
 int netdev_err (int ,char*,int,...) ;

__attribute__((used)) static int qlcnic_sriov_validate_cfg_intrcoal(struct qlcnic_adapter *adapter,
           struct qlcnic_vf_info *vf,
           struct qlcnic_cmd_args *cmd)
{
 struct qlcnic_nic_intr_coalesce *coal = &adapter->ahw->coal;
 u16 ctx_id, pkts, time;
 int err = -EINVAL;
 u8 type;

 type = cmd->req.arg[1] & QLC_INTR_COAL_TYPE_MASK;
 ctx_id = cmd->req.arg[1] >> 16;
 pkts = cmd->req.arg[2] & 0xffff;
 time = cmd->req.arg[2] >> 16;

 switch (type) {
 case 129:
  if (ctx_id != vf->rx_ctx_id || pkts > coal->rx_packets ||
      time < coal->rx_time_us)
   goto err_label;
  break;
 case 128:
  if (ctx_id != vf->tx_ctx_id || pkts > coal->tx_packets ||
      time < coal->tx_time_us)
   goto err_label;
  break;
 default:
  netdev_err(adapter->netdev, "Invalid coalescing type 0x%x received\n",
      type);
  return err;
 }

 return 0;

err_label:
 netdev_err(adapter->netdev, "Expected: rx_ctx_id 0x%x rx_packets 0x%x rx_time_us 0x%x tx_ctx_id 0x%x tx_packets 0x%x tx_time_us 0x%x\n",
     vf->rx_ctx_id, coal->rx_packets, coal->rx_time_us,
     vf->tx_ctx_id, coal->tx_packets, coal->tx_time_us);
 netdev_err(adapter->netdev, "Received: ctx_id 0x%x packets 0x%x time_us 0x%x type 0x%x\n",
     ctx_id, pkts, time, type);

 return err;
}
