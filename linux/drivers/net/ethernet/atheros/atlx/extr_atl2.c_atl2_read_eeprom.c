
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atl2_hw {int dummy; } ;


 int ATL2_READ_REG (struct atl2_hw*,int ) ;
 int ATL2_WRITE_REG (struct atl2_hw*,int ,int) ;
 int REG_VPD_CAP ;
 int REG_VPD_DATA ;
 int VPD_CAP_VPD_ADDR_MASK ;
 int VPD_CAP_VPD_ADDR_SHIFT ;
 int VPD_CAP_VPD_FLAG ;
 int msleep (int) ;

__attribute__((used)) static bool atl2_read_eeprom(struct atl2_hw *hw, u32 Offset, u32 *pValue)
{
 int i;
 u32 Control;

 if (Offset & 0x3)
  return 0;

 ATL2_WRITE_REG(hw, REG_VPD_DATA, 0);
 Control = (Offset & VPD_CAP_VPD_ADDR_MASK) << VPD_CAP_VPD_ADDR_SHIFT;
 ATL2_WRITE_REG(hw, REG_VPD_CAP, Control);

 for (i = 0; i < 10; i++) {
  msleep(2);
  Control = ATL2_READ_REG(hw, REG_VPD_CAP);
  if (Control & VPD_CAP_VPD_FLAG)
   break;
 }

 if (Control & VPD_CAP_VPD_FLAG) {
  *pValue = ATL2_READ_REG(hw, REG_VPD_DATA);
  return 1;
 }
 return 0;
}
