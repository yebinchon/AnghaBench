
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qlcnic_adapter {int dummy; } ;


 int QLCNIC_CRB_DEV_NPAR_STATE ;
 scalar_t__ QLCNIC_DEV_NPAR_NON_OPER ;
 scalar_t__ QLC_SHARED_REG_RD32 (struct qlcnic_adapter*,int ) ;
 int QLC_SHARED_REG_WR32 (struct qlcnic_adapter*,int ,scalar_t__) ;
 scalar_t__ qlcnic_api_lock (struct qlcnic_adapter*) ;
 int qlcnic_api_unlock (struct qlcnic_adapter*) ;

__attribute__((used)) static void
qlcnic_set_npar_non_operational(struct qlcnic_adapter *adapter)
{
 u32 state;

 state = QLC_SHARED_REG_RD32(adapter, QLCNIC_CRB_DEV_NPAR_STATE);
 if (state == QLCNIC_DEV_NPAR_NON_OPER)
  return;

 if (qlcnic_api_lock(adapter))
  return;
 QLC_SHARED_REG_WR32(adapter, QLCNIC_CRB_DEV_NPAR_STATE,
       QLCNIC_DEV_NPAR_NON_OPER);
 qlcnic_api_unlock(adapter);
}
