
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct qlcnic_info {int capabilities; int op_mode; int max_mtu; int switch_mode; scalar_t__ phys_port; int max_rx_mcast_mac_filters; } ;
struct qlcnic_hardware_context {int capabilities; int op_mode; int max_mtu; int switch_mode; scalar_t__ physical_port; int fw_hal_version; int pci_func; int max_mc_count; } ;
struct qlcnic_adapter {struct qlcnic_hardware_context* ahw; TYPE_1__* pdev; int flags; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int QLCNIC_ADAPTER_INITIALIZED ;
 int dev_info (int *,char*,int ) ;
 scalar_t__ qlcnic_83xx_get_port_info (struct qlcnic_adapter*) ;
 int qlcnic_get_nic_info (struct qlcnic_adapter*,struct qlcnic_info*,int ) ;
 int qlcnic_sriov_get_vf_vport_info (struct qlcnic_adapter*,struct qlcnic_info*,int ) ;
 int qlcnic_sriov_vf_cfg_buff_desc (struct qlcnic_adapter*) ;

__attribute__((used)) static int qlcnic_sriov_vf_init_driver(struct qlcnic_adapter *adapter)
{
 struct qlcnic_hardware_context *ahw = adapter->ahw;
 struct qlcnic_info nic_info;
 int err;

 err = qlcnic_sriov_get_vf_vport_info(adapter, &nic_info, 0);
 if (err)
  return err;

 ahw->max_mc_count = nic_info.max_rx_mcast_mac_filters;

 err = qlcnic_get_nic_info(adapter, &nic_info, ahw->pci_func);
 if (err)
  return -EIO;

 if (qlcnic_83xx_get_port_info(adapter))
  return -EIO;

 qlcnic_sriov_vf_cfg_buff_desc(adapter);
 adapter->flags |= QLCNIC_ADAPTER_INITIALIZED;
 dev_info(&adapter->pdev->dev, "HAL Version: %d\n",
   adapter->ahw->fw_hal_version);

 ahw->physical_port = (u8) nic_info.phys_port;
 ahw->switch_mode = nic_info.switch_mode;
 ahw->max_mtu = nic_info.max_mtu;
 ahw->op_mode = nic_info.op_mode;
 ahw->capabilities = nic_info.capabilities;
 return 0;
}
