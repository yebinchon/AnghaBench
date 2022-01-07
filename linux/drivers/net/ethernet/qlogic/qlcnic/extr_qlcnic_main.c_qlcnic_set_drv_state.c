
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct qlcnic_adapter {int portnum; } ;


 int EIO ;
 int QLCNIC_CRB_DRV_STATE ;
 scalar_t__ QLCNIC_DEV_NEED_QUISCENT ;
 scalar_t__ QLCNIC_DEV_NEED_RESET ;
 int QLC_DEV_SET_QSCNT_RDY (int ,int ) ;
 int QLC_DEV_SET_RST_RDY (int ,int ) ;
 int QLC_SHARED_REG_RD32 (struct qlcnic_adapter*,int ) ;
 int QLC_SHARED_REG_WR32 (struct qlcnic_adapter*,int ,int ) ;
 int WARN_ON (int) ;
 scalar_t__ qlcnic_api_lock (struct qlcnic_adapter*) ;
 int qlcnic_api_unlock (struct qlcnic_adapter*) ;

__attribute__((used)) static int
qlcnic_set_drv_state(struct qlcnic_adapter *adapter, u8 state)
{
 u32 val;

 WARN_ON(state != QLCNIC_DEV_NEED_RESET &&
   state != QLCNIC_DEV_NEED_QUISCENT);

 if (qlcnic_api_lock(adapter))
  return -EIO;

 val = QLC_SHARED_REG_RD32(adapter, QLCNIC_CRB_DRV_STATE);

 if (state == QLCNIC_DEV_NEED_RESET)
  QLC_DEV_SET_RST_RDY(val, adapter->portnum);
 else if (state == QLCNIC_DEV_NEED_QUISCENT)
  QLC_DEV_SET_QSCNT_RDY(val, adapter->portnum);

 QLC_SHARED_REG_WR32(adapter, QLCNIC_CRB_DRV_STATE, val);

 qlcnic_api_unlock(adapter);

 return 0;
}
