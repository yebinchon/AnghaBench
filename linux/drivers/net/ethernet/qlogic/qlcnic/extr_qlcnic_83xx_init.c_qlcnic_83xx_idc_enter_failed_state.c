
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_adapter {TYPE_1__* pdev; int ahw; } ;
struct TYPE_2__ {int dev; } ;


 int EBUSY ;
 int QLCWRX (int ,int ,int ) ;
 int QLC_83XX_IDC_DEV_FAILED ;
 int QLC_83XX_IDC_DEV_STATE ;
 int dev_info (int *,char*) ;
 int qlcnic_83xx_idc_clear_registers (struct qlcnic_adapter*,int ) ;
 int qlcnic_83xx_idc_log_state_history (struct qlcnic_adapter*) ;
 scalar_t__ qlcnic_83xx_lock_driver (struct qlcnic_adapter*) ;
 int qlcnic_83xx_unlock_driver (struct qlcnic_adapter*) ;

__attribute__((used)) static int qlcnic_83xx_idc_enter_failed_state(struct qlcnic_adapter *adapter,
           int lock)
{
 if (lock) {
  if (qlcnic_83xx_lock_driver(adapter))
   return -EBUSY;
 }

 qlcnic_83xx_idc_clear_registers(adapter, 0);
 QLCWRX(adapter->ahw, QLC_83XX_IDC_DEV_STATE, QLC_83XX_IDC_DEV_FAILED);
 if (lock)
  qlcnic_83xx_unlock_driver(adapter);

 qlcnic_83xx_idc_log_state_history(adapter);
 dev_info(&adapter->pdev->dev, "Device will enter failed state\n");

 return 0;
}
