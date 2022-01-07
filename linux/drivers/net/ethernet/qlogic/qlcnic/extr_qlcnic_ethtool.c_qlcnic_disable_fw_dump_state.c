
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct qlcnic_fw_dump {int enable; } ;
struct qlcnic_adapter {TYPE_1__* pdev; TYPE_2__* ahw; } ;
struct TYPE_5__ {struct qlcnic_fw_dump fw_dump; } ;
struct TYPE_4__ {int dev; } ;


 int EBUSY ;
 int QLCRDX (TYPE_2__*,int ) ;
 int QLCWRX (TYPE_2__*,int ,int ) ;
 int QLC_83XX_IDC_CTRL ;
 int QLC_83XX_IDC_DISABLE_FW_DUMP ;
 int dev_info (int *,char*) ;
 scalar_t__ qlcnic_83xx_lock_driver (struct qlcnic_adapter*) ;
 int qlcnic_83xx_unlock_driver (struct qlcnic_adapter*) ;
 scalar_t__ qlcnic_84xx_check (struct qlcnic_adapter*) ;

__attribute__((used)) static int qlcnic_disable_fw_dump_state(struct qlcnic_adapter *adapter)
{
 struct qlcnic_fw_dump *fw_dump = &adapter->ahw->fw_dump;
 u32 val;

 if (qlcnic_84xx_check(adapter)) {
  if (qlcnic_83xx_lock_driver(adapter))
   return -EBUSY;

  val = QLCRDX(adapter->ahw, QLC_83XX_IDC_CTRL);
  val |= QLC_83XX_IDC_DISABLE_FW_DUMP;
  QLCWRX(adapter->ahw, QLC_83XX_IDC_CTRL, val);

  qlcnic_83xx_unlock_driver(adapter);
 } else {
  fw_dump->enable = 0;
 }

 dev_info(&adapter->pdev->dev, "FW dump disabled\n");

 return 0;
}
