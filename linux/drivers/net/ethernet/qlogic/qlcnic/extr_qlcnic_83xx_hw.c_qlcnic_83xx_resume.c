
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlc_83xx_idc {int delay; } ;
struct qlcnic_hardware_context {scalar_t__ nic_mode; scalar_t__ op_mode; struct qlc_83xx_idc idc; } ;
struct qlcnic_adapter {struct qlcnic_hardware_context* ahw; } ;


 scalar_t__ QLCNIC_MGMT_FUNC ;
 scalar_t__ QLCNIC_VNIC_MODE ;
 int qlcnic_83xx_check_vnic_state (struct qlcnic_adapter*) ;
 int qlcnic_83xx_idc_init (struct qlcnic_adapter*) ;
 int qlcnic_83xx_idc_poll_dev_state ;
 int qlcnic_83xx_idc_reattach_driver (struct qlcnic_adapter*) ;
 int qlcnic_83xx_set_vnic_opmode (struct qlcnic_adapter*) ;
 int qlcnic_schedule_work (struct qlcnic_adapter*,int ,int ) ;

__attribute__((used)) static int qlcnic_83xx_resume(struct qlcnic_adapter *adapter)
{
 struct qlcnic_hardware_context *ahw = adapter->ahw;
 struct qlc_83xx_idc *idc = &ahw->idc;
 int err = 0;

 err = qlcnic_83xx_idc_init(adapter);
 if (err)
  return err;

 if (ahw->nic_mode == QLCNIC_VNIC_MODE) {
  if (ahw->op_mode == QLCNIC_MGMT_FUNC) {
   qlcnic_83xx_set_vnic_opmode(adapter);
  } else {
   err = qlcnic_83xx_check_vnic_state(adapter);
   if (err)
    return err;
  }
 }

 err = qlcnic_83xx_idc_reattach_driver(adapter);
 if (err)
  return err;

 qlcnic_schedule_work(adapter, qlcnic_83xx_idc_poll_dev_state,
        idc->delay);
 return err;
}
