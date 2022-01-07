
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int dummy; } ;


 int DRV ;
 int QLCDB (struct qlcnic_adapter*,int ,char*) ;
 int QLCNIC_CRB_DEV_NPAR_STATE ;
 int QLCNIC_DEV_NPAR_OPER ;
 int QLC_SHARED_REG_WR32 (struct qlcnic_adapter*,int ,int ) ;
 scalar_t__ qlcnic_api_lock (struct qlcnic_adapter*) ;
 int qlcnic_api_unlock (struct qlcnic_adapter*) ;

__attribute__((used)) static void
qlcnic_dev_set_npar_ready(struct qlcnic_adapter *adapter)
{
 if (qlcnic_api_lock(adapter))
  return;

 QLC_SHARED_REG_WR32(adapter, QLCNIC_CRB_DEV_NPAR_STATE,
       QLCNIC_DEV_NPAR_OPER);
 QLCDB(adapter, DRV, "NPAR operational state set\n");

 qlcnic_api_unlock(adapter);
}
