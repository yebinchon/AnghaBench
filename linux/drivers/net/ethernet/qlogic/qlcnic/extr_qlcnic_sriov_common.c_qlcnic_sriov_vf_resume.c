
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_adapter {struct net_device* netdev; TYPE_1__* ahw; } ;
struct qlc_83xx_idc {int delay; int status; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct qlc_83xx_idc idc; } ;


 int NETDEV_UP ;
 int QLCNIC_BC_CMD_CHANNEL_INIT ;
 int QLC_83XX_MODULE_LOADED ;
 int netif_device_attach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int qlcnic_83xx_enable_mbx_interrupt (struct qlcnic_adapter*) ;
 int qlcnic_restore_indev_addr (struct net_device*,int ) ;
 int qlcnic_schedule_work (struct qlcnic_adapter*,int ,int ) ;
 int qlcnic_sriov_cfg_bc_intr (struct qlcnic_adapter*,int) ;
 int qlcnic_sriov_channel_cfg_cmd (struct qlcnic_adapter*,int ) ;
 int qlcnic_sriov_vf_poll_dev_state ;
 int qlcnic_up (struct qlcnic_adapter*,struct net_device*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int qlcnic_sriov_vf_resume(struct qlcnic_adapter *adapter)
{
 struct qlc_83xx_idc *idc = &adapter->ahw->idc;
 struct net_device *netdev = adapter->netdev;
 int err;

 set_bit(QLC_83XX_MODULE_LOADED, &idc->status);
 qlcnic_83xx_enable_mbx_interrupt(adapter);
 err = qlcnic_sriov_cfg_bc_intr(adapter, 1);
 if (err)
  return err;

 err = qlcnic_sriov_channel_cfg_cmd(adapter, QLCNIC_BC_CMD_CHANNEL_INIT);
 if (!err) {
  if (netif_running(netdev)) {
   err = qlcnic_up(adapter, netdev);
   if (!err)
    qlcnic_restore_indev_addr(netdev, NETDEV_UP);
  }
 }

 netif_device_attach(netdev);
 qlcnic_schedule_work(adapter, qlcnic_sriov_vf_poll_dev_state,
        idc->delay);
 return err;
}
