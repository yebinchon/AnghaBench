
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qlcnic_adapter {scalar_t__ fw_fail_cnt; int ahw; } ;


 int EIO ;
 scalar_t__ QLCRDX (int ,int ) ;
 scalar_t__ QLC_83XX_IDC_DEV_READY ;
 int QLC_83XX_IDC_DEV_STATE ;
 scalar_t__ QLC_BC_CMD_MAX_RETRY_CNT ;
 int msleep (int) ;

__attribute__((used)) static int qlcnic_sriov_check_dev_ready(struct qlcnic_adapter *adapter)
{
 u32 state;

 do {
  msleep(20);
  if (++adapter->fw_fail_cnt > QLC_BC_CMD_MAX_RETRY_CNT)
   return -EIO;
  state = QLCRDX(adapter->ahw, QLC_83XX_IDC_DEV_STATE);
 } while (state != QLC_83XX_IDC_DEV_READY);

 return 0;
}
