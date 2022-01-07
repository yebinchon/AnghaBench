
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qlc_83xx_idc {int (* state_entry ) (struct qlcnic_adapter*) ;int prev_state; } ;
struct qlcnic_hardware_context {scalar_t__ pci_func; struct qlc_83xx_idc idc; } ;
struct qlcnic_adapter {struct qlcnic_hardware_context* ahw; } ;


 int QLC_83XX_IDC_DEV_NEED_RESET ;
 int qlcnic_83xx_idc_clear_registers (struct qlcnic_adapter*,int ) ;
 scalar_t__ qlcnic_83xx_idc_find_reset_owner_id (struct qlcnic_adapter*) ;
 int qlcnic_83xx_restart_hw (struct qlcnic_adapter*) ;
 int stub1 (struct qlcnic_adapter*) ;

int qlcnic_83xx_aer_reset(struct qlcnic_adapter *adapter)
{
 struct qlcnic_hardware_context *ahw = adapter->ahw;
 struct qlc_83xx_idc *idc = &ahw->idc;
 int ret = 0;
 u32 owner;





 idc->prev_state = QLC_83XX_IDC_DEV_NEED_RESET;
 owner = qlcnic_83xx_idc_find_reset_owner_id(adapter);
 if (ahw->pci_func == owner) {
  ret = qlcnic_83xx_restart_hw(adapter);
  if (ret < 0)
   return ret;
  qlcnic_83xx_idc_clear_registers(adapter, 0);
 }

 ret = idc->state_entry(adapter);
 return ret;
}
