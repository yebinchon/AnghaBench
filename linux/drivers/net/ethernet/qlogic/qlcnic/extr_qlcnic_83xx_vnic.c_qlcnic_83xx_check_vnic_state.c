
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct qlc_83xx_idc {scalar_t__ vnic_wait_limit; } ;
struct qlcnic_hardware_context {struct qlc_83xx_idc idc; } ;
struct qlcnic_adapter {TYPE_1__* pdev; struct qlcnic_hardware_context* ahw; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 scalar_t__ QLCNIC_DEV_NPAR_OPER ;
 scalar_t__ QLCRDX (struct qlcnic_hardware_context*,int ) ;
 int QLC_83XX_VNIC_STATE ;
 int dev_err (int *,char*) ;
 int msleep (int) ;

int qlcnic_83xx_check_vnic_state(struct qlcnic_adapter *adapter)
{
 struct qlcnic_hardware_context *ahw = adapter->ahw;
 struct qlc_83xx_idc *idc = &ahw->idc;
 u32 state;

 state = QLCRDX(ahw, QLC_83XX_VNIC_STATE);
 while (state != QLCNIC_DEV_NPAR_OPER && idc->vnic_wait_limit) {
  idc->vnic_wait_limit--;
  msleep(1000);
  state = QLCRDX(ahw, QLC_83XX_VNIC_STATE);
 }

 if (state != QLCNIC_DEV_NPAR_OPER) {
  dev_err(&adapter->pdev->dev,
   "vNIC mode not operational, state check timed out.\n");
  return -EIO;
 }

 return 0;
}
