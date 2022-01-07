
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qlcnic_adapter {int portnum; } ;


 int EBUSY ;
 int QLCNIC_CRB_DRV_STATE ;
 int QLC_DEV_CLR_RST_QSCNT (int ,int ) ;
 int QLC_SHARED_REG_RD32 (struct qlcnic_adapter*,int ) ;
 int QLC_SHARED_REG_WR32 (struct qlcnic_adapter*,int ,int ) ;
 scalar_t__ qlcnic_api_lock (struct qlcnic_adapter*) ;
 int qlcnic_api_unlock (struct qlcnic_adapter*) ;

__attribute__((used)) static int
qlcnic_clr_drv_state(struct qlcnic_adapter *adapter)
{
 u32 val;

 if (qlcnic_api_lock(adapter))
  return -EBUSY;

 val = QLC_SHARED_REG_RD32(adapter, QLCNIC_CRB_DRV_STATE);
 QLC_DEV_CLR_RST_QSCNT(val, adapter->portnum);
 QLC_SHARED_REG_WR32(adapter, QLCNIC_CRB_DRV_STATE, val);

 qlcnic_api_unlock(adapter);

 return 0;
}
