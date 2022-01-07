
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atl1_hw {scalar_t__ hw_addr; } ;


 scalar_t__ REG_VPD_CAP ;
 scalar_t__ REG_VPD_DATA ;
 int VPD_CAP_VPD_ADDR_MASK ;
 int VPD_CAP_VPD_ADDR_SHIFT ;
 int VPD_CAP_VPD_FLAG ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int msleep (int) ;

__attribute__((used)) static bool atl1_read_eeprom(struct atl1_hw *hw, u32 offset, u32 *p_value)
{
 int i;
 u32 control;

 if (offset & 3)

  return 0;

 iowrite32(0, hw->hw_addr + REG_VPD_DATA);
 control = (offset & VPD_CAP_VPD_ADDR_MASK) << VPD_CAP_VPD_ADDR_SHIFT;
 iowrite32(control, hw->hw_addr + REG_VPD_CAP);
 ioread32(hw->hw_addr + REG_VPD_CAP);

 for (i = 0; i < 10; i++) {
  msleep(2);
  control = ioread32(hw->hw_addr + REG_VPD_CAP);
  if (control & VPD_CAP_VPD_FLAG)
   break;
 }
 if (control & VPD_CAP_VPD_FLAG) {
  *p_value = ioread32(hw->hw_addr + REG_VPD_DATA);
  return 1;
 }

 return 0;
}
