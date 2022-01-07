
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlc_83xx_idc {int status; } ;
struct qlcnic_hardware_context {scalar_t__ nic_mode; struct qlc_83xx_idc idc; } ;
struct qlcnic_adapter {int idc_aen_work; int fw_work; struct qlcnic_hardware_context* ahw; } ;


 scalar_t__ QLCNIC_VNIC_MODE ;
 int QLC_83XX_MBX_READY ;
 int cancel_delayed_work_sync (int *) ;
 int clear_bit (int ,int *) ;
 int qlcnic_83xx_disable_vnic_mode (struct qlcnic_adapter*,int) ;
 int qlcnic_83xx_idc_detach_driver (struct qlcnic_adapter*) ;
 int qlcnic_83xx_initialize_nic (struct qlcnic_adapter*,int ) ;

void qlcnic_83xx_aer_stop_poll_work(struct qlcnic_adapter *adapter)
{
 struct qlcnic_hardware_context *ahw = adapter->ahw;
 struct qlc_83xx_idc *idc = &ahw->idc;

 clear_bit(QLC_83XX_MBX_READY, &idc->status);
 cancel_delayed_work_sync(&adapter->fw_work);

 if (ahw->nic_mode == QLCNIC_VNIC_MODE)
  qlcnic_83xx_disable_vnic_mode(adapter, 1);

 qlcnic_83xx_idc_detach_driver(adapter);
 qlcnic_83xx_initialize_nic(adapter, 0);

 cancel_delayed_work_sync(&adapter->idc_aen_work);
}
