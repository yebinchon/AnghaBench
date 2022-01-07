
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qlcnic_adapter {int ahw; } ;


 int QLCRDX (int ,int ) ;
 int QLC_83XX_IDC_DRV_PRESENCE ;

__attribute__((used)) static int
qlcnic_83xx_idc_check_driver_presence_reg(struct qlcnic_adapter *adapter)
{
 u32 val;

 val = QLCRDX(adapter->ahw, QLC_83XX_IDC_DRV_PRESENCE);
 if ((val & 0xFFFF))
  return 1;
 else
  return 0;
}
