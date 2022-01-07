
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct qlcnic_adapter {int dev_init_timeo; int portnum; TYPE_1__* pdev; int state; } ;
struct TYPE_2__ {int dev; } ;


 int HW ;
 int QLCDB (struct qlcnic_adapter*,int ,char*,int) ;
 int QLCNIC_CRB_DEV_STATE ;
 int QLCNIC_CRB_DRV_ACTIVE ;
 int QLCNIC_CRB_DRV_IDC_VER ;
 int QLCNIC_CRB_DRV_STATE ;







 int QLCNIC_DRV_IDC_VER ;
 int QLC_DEV_CLR_RST_QSCNT (int,int) ;
 int QLC_DEV_SET_QSCNT_RDY (int,int) ;
 int QLC_DEV_SET_REF_CNT (int,int) ;
 int QLC_DEV_SET_RST_RDY (int,int) ;
 int QLC_SHARED_REG_RD32 (struct qlcnic_adapter*,int ) ;
 int QLC_SHARED_REG_WR32 (struct qlcnic_adapter*,int ,int) ;
 int __QLCNIC_START_FW ;
 int dev_err (int *,char*) ;
 int msleep (int) ;
 scalar_t__ qlcnic_api_lock (struct qlcnic_adapter*) ;
 int qlcnic_api_unlock (struct qlcnic_adapter*) ;
 int qlcnic_check_idc_ver (struct qlcnic_adapter*) ;
 int qlcnic_idc_debug_info (struct qlcnic_adapter*,int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static int
qlcnic_can_start_firmware(struct qlcnic_adapter *adapter)
{
 u32 val, prev_state;
 u8 dev_init_timeo = adapter->dev_init_timeo;
 u8 portnum = adapter->portnum;
 u8 ret;

 if (test_and_clear_bit(__QLCNIC_START_FW, &adapter->state))
  return 1;

 if (qlcnic_api_lock(adapter))
  return -1;

 val = QLC_SHARED_REG_RD32(adapter, QLCNIC_CRB_DRV_ACTIVE);
 if (!(val & (1 << (portnum * 4)))) {
  QLC_DEV_SET_REF_CNT(val, portnum);
  QLC_SHARED_REG_WR32(adapter, QLCNIC_CRB_DRV_ACTIVE, val);
 }

 prev_state = QLC_SHARED_REG_RD32(adapter, QLCNIC_CRB_DEV_STATE);
 QLCDB(adapter, HW, "Device state = %u\n", prev_state);

 switch (prev_state) {
 case 134:
  QLC_SHARED_REG_WR32(adapter, QLCNIC_CRB_DEV_STATE,
        132);
  QLC_SHARED_REG_WR32(adapter, QLCNIC_CRB_DRV_IDC_VER,
        QLCNIC_DRV_IDC_VER);
  qlcnic_idc_debug_info(adapter, 0);
  qlcnic_api_unlock(adapter);
  return 1;

 case 128:
  ret = qlcnic_check_idc_ver(adapter);
  qlcnic_api_unlock(adapter);
  return ret;

 case 130:
  val = QLC_SHARED_REG_RD32(adapter, QLCNIC_CRB_DRV_STATE);
  QLC_DEV_SET_RST_RDY(val, portnum);
  QLC_SHARED_REG_WR32(adapter, QLCNIC_CRB_DRV_STATE, val);
  break;

 case 131:
  val = QLC_SHARED_REG_RD32(adapter, QLCNIC_CRB_DRV_STATE);
  QLC_DEV_SET_QSCNT_RDY(val, portnum);
  QLC_SHARED_REG_WR32(adapter, QLCNIC_CRB_DRV_STATE, val);
  break;

 case 133:
  dev_err(&adapter->pdev->dev, "Device in failed state.\n");
  qlcnic_api_unlock(adapter);
  return -1;

 case 132:
 case 129:
  break;
 }

 qlcnic_api_unlock(adapter);

 do {
  msleep(1000);
  prev_state = QLC_SHARED_REG_RD32(adapter, QLCNIC_CRB_DEV_STATE);

  if (prev_state == 129)
   continue;
 } while ((prev_state != 128) && --dev_init_timeo);

 if (!dev_init_timeo) {
  dev_err(&adapter->pdev->dev,
   "Waiting for device to initialize timeout\n");
  return -1;
 }

 if (qlcnic_api_lock(adapter))
  return -1;

 val = QLC_SHARED_REG_RD32(adapter, QLCNIC_CRB_DRV_STATE);
 QLC_DEV_CLR_RST_QSCNT(val, portnum);
 QLC_SHARED_REG_WR32(adapter, QLCNIC_CRB_DRV_STATE, val);

 ret = qlcnic_check_idc_ver(adapter);
 qlcnic_api_unlock(adapter);

 return ret;
}
