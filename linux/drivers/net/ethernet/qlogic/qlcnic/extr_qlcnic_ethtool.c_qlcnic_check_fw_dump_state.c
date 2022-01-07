
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qlcnic_fw_dump {int enable; } ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct TYPE_2__ {struct qlcnic_fw_dump fw_dump; } ;


 int QLCRDX (TYPE_1__*,int ) ;
 int QLC_83XX_IDC_CTRL ;
 int QLC_83XX_IDC_DISABLE_FW_DUMP ;
 scalar_t__ qlcnic_84xx_check (struct qlcnic_adapter*) ;

bool qlcnic_check_fw_dump_state(struct qlcnic_adapter *adapter)
{
 struct qlcnic_fw_dump *fw_dump = &adapter->ahw->fw_dump;
 bool state;
 u32 val;

 if (qlcnic_84xx_check(adapter)) {
  val = QLCRDX(adapter->ahw, QLC_83XX_IDC_CTRL);
  state = (val & QLC_83XX_IDC_DISABLE_FW_DUMP) ? 0 : 1;
 } else {
  state = fw_dump->enable;
 }

 return state;
}
