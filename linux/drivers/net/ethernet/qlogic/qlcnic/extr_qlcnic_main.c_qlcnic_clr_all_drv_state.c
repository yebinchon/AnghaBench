
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct qlcnic_adapter {int state; int flags; scalar_t__ fw_fail_cnt; int portnum; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int QLCNIC_CRB_DEV_STATE ;
 int QLCNIC_CRB_DRV_ACTIVE ;
 int QLCNIC_CRB_DRV_STATE ;
 int QLCNIC_DEV_COLD ;
 int QLCNIC_DEV_FAILED ;
 int QLCNIC_FW_HANG ;
 int QLC_DEV_CLR_REF_CNT (int,int ) ;
 int QLC_DEV_CLR_RST_QSCNT (int,int ) ;
 int QLC_SHARED_REG_RD32 (struct qlcnic_adapter*,int ) ;
 int QLC_SHARED_REG_WR32 (struct qlcnic_adapter*,int ,int) ;
 int __QLCNIC_RESETTING ;
 int __QLCNIC_START_FW ;
 int clear_bit (int ,int *) ;
 int dev_info (int *,char*) ;
 scalar_t__ qlcnic_api_lock (struct qlcnic_adapter*) ;
 int qlcnic_api_unlock (struct qlcnic_adapter*) ;

void qlcnic_clr_all_drv_state(struct qlcnic_adapter *adapter, u8 failed)
{
 u32 val;

 if (qlcnic_api_lock(adapter))
  goto err;

 val = QLC_SHARED_REG_RD32(adapter, QLCNIC_CRB_DRV_ACTIVE);
 QLC_DEV_CLR_REF_CNT(val, adapter->portnum);
 QLC_SHARED_REG_WR32(adapter, QLCNIC_CRB_DRV_ACTIVE, val);

 if (failed) {
  QLC_SHARED_REG_WR32(adapter, QLCNIC_CRB_DEV_STATE,
        QLCNIC_DEV_FAILED);
  dev_info(&adapter->pdev->dev,
    "Device state set to Failed. Please Reboot\n");
 } else if (!(val & 0x11111111))
  QLC_SHARED_REG_WR32(adapter, QLCNIC_CRB_DEV_STATE,
        QLCNIC_DEV_COLD);

 val = QLC_SHARED_REG_RD32(adapter, QLCNIC_CRB_DRV_STATE);
 QLC_DEV_CLR_RST_QSCNT(val, adapter->portnum);
 QLC_SHARED_REG_WR32(adapter, QLCNIC_CRB_DRV_STATE, val);

 qlcnic_api_unlock(adapter);
err:
 adapter->fw_fail_cnt = 0;
 adapter->flags &= ~QLCNIC_FW_HANG;
 clear_bit(__QLCNIC_START_FW, &adapter->state);
 clear_bit(__QLCNIC_RESETTING, &adapter->state);
}
