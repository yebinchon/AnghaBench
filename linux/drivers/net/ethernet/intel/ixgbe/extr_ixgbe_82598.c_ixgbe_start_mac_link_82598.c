
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int IXGBE_AUTOC ;
 scalar_t__ IXGBE_AUTOC_AN_RESTART ;
 scalar_t__ IXGBE_AUTOC_LMS_KX4_AN ;
 scalar_t__ IXGBE_AUTOC_LMS_KX4_AN_1G_AN ;
 scalar_t__ IXGBE_AUTOC_LMS_MASK ;
 scalar_t__ IXGBE_AUTO_NEG_TIME ;
 int IXGBE_ERR_AUTONEG_NOT_COMPLETE ;
 int IXGBE_LINKS ;
 scalar_t__ IXGBE_LINKS_KX_AN_COMP ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,scalar_t__) ;
 int hw_dbg (struct ixgbe_hw*,char*) ;
 int msleep (int) ;

__attribute__((used)) static s32 ixgbe_start_mac_link_82598(struct ixgbe_hw *hw,
          bool autoneg_wait_to_complete)
{
 u32 autoc_reg;
 u32 links_reg;
 u32 i;
 s32 status = 0;


 autoc_reg = IXGBE_READ_REG(hw, IXGBE_AUTOC);
 autoc_reg |= IXGBE_AUTOC_AN_RESTART;
 IXGBE_WRITE_REG(hw, IXGBE_AUTOC, autoc_reg);


 if (autoneg_wait_to_complete) {
  if ((autoc_reg & IXGBE_AUTOC_LMS_MASK) ==
       IXGBE_AUTOC_LMS_KX4_AN ||
      (autoc_reg & IXGBE_AUTOC_LMS_MASK) ==
       IXGBE_AUTOC_LMS_KX4_AN_1G_AN) {
   links_reg = 0;
   for (i = 0; i < IXGBE_AUTO_NEG_TIME; i++) {
    links_reg = IXGBE_READ_REG(hw, IXGBE_LINKS);
    if (links_reg & IXGBE_LINKS_KX_AN_COMP)
     break;
    msleep(100);
   }
   if (!(links_reg & IXGBE_LINKS_KX_AN_COMP)) {
    status = IXGBE_ERR_AUTONEG_NOT_COMPLETE;
    hw_dbg(hw, "Autonegotiation did not complete.\n");
   }
  }
 }


 msleep(50);

 return status;
}
