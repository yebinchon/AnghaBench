
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgb_hw {int link_up; } ;


 int ENTER () ;
 int IXGB_READ_REG (struct ixgb_hw*,int ) ;
 int IXGB_STATUS_LU ;
 int IXGB_XPCSS_ALIGN_STATUS ;
 int STATUS ;
 int XPCSS ;
 void* ixgb_link_reset (struct ixgb_hw*) ;
 int pr_debug (char*) ;

void
ixgb_check_for_link(struct ixgb_hw *hw)
{
 u32 status_reg;
 u32 xpcss_reg;

 ENTER();

 xpcss_reg = IXGB_READ_REG(hw, XPCSS);
 status_reg = IXGB_READ_REG(hw, STATUS);

 if ((xpcss_reg & IXGB_XPCSS_ALIGN_STATUS) &&
     (status_reg & IXGB_STATUS_LU)) {
  hw->link_up = 1;
 } else if (!(xpcss_reg & IXGB_XPCSS_ALIGN_STATUS) &&
     (status_reg & IXGB_STATUS_LU)) {
  pr_debug("XPCSS Not Aligned while Status:LU is set\n");
  hw->link_up = ixgb_link_reset(hw);
 } else {




  hw->link_up = ixgb_link_reset(hw);
 }

}
