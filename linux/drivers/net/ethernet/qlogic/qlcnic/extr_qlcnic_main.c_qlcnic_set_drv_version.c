
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qlcnic_hardware_context {int* extra_capability; } ;
struct qlcnic_adapter {struct qlcnic_hardware_context* ahw; } ;


 int QLCNIC_CMD_82XX_SET_DRV_VER ;
 int QLCNIC_CMD_83XX_SET_DRV_VER ;
 int QLCNIC_FW_CAPABILITY_SET_DRV_VER ;
 scalar_t__ qlcnic_82xx_check (struct qlcnic_adapter*) ;
 scalar_t__ qlcnic_83xx_check (struct qlcnic_adapter*) ;
 int qlcnic_fw_cmd_set_drv_version (struct qlcnic_adapter*,int ) ;

void qlcnic_set_drv_version(struct qlcnic_adapter *adapter)
{
 struct qlcnic_hardware_context *ahw = adapter->ahw;
 u32 fw_cmd = 0;

 if (qlcnic_82xx_check(adapter))
  fw_cmd = QLCNIC_CMD_82XX_SET_DRV_VER;
 else if (qlcnic_83xx_check(adapter))
  fw_cmd = QLCNIC_CMD_83XX_SET_DRV_VER;

 if (ahw->extra_capability[0] & QLCNIC_FW_CAPABILITY_SET_DRV_VER)
  qlcnic_fw_cmd_set_drv_version(adapter, fw_cmd);
}
