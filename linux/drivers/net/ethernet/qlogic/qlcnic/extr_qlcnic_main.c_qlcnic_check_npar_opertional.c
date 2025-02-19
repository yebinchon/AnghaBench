
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct qlcnic_adapter {TYPE_2__* pdev; TYPE_1__* ahw; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {scalar_t__ op_mode; } ;


 int EIO ;
 int QLCNIC_CRB_DEV_NPAR_STATE ;
 scalar_t__ QLCNIC_DEV_NPAR_OPER ;
 scalar_t__ QLCNIC_DEV_NPAR_OPER_TIMEO ;
 scalar_t__ QLCNIC_MGMT_FUNC ;
 scalar_t__ QLC_SHARED_REG_RD32 (struct qlcnic_adapter*,int ) ;
 int dev_err (int *,char*) ;
 int msleep (int) ;

__attribute__((used)) static int qlcnic_check_npar_opertional(struct qlcnic_adapter *adapter)
{
 u8 npar_opt_timeo = QLCNIC_DEV_NPAR_OPER_TIMEO;
 u32 npar_state;

 if (adapter->ahw->op_mode == QLCNIC_MGMT_FUNC)
  return 0;

 npar_state = QLC_SHARED_REG_RD32(adapter,
      QLCNIC_CRB_DEV_NPAR_STATE);
 while (npar_state != QLCNIC_DEV_NPAR_OPER && --npar_opt_timeo) {
  msleep(1000);
  npar_state = QLC_SHARED_REG_RD32(adapter,
       QLCNIC_CRB_DEV_NPAR_STATE);
 }
 if (!npar_opt_timeo) {
  dev_err(&adapter->pdev->dev,
   "Waiting for NPAR state to operational timeout\n");
  return -EIO;
 }
 return 0;
}
