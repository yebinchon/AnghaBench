
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int IXGBE_ERR_PHY ;
 scalar_t__ IXGBE_MDIO_COMMAND_TIMEOUT ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 scalar_t__ IXGBE_SB_IOSF_CTRL_BUSY ;
 int IXGBE_SB_IOSF_INDIRECT_CTRL ;
 int hw_dbg (struct ixgbe_hw*,char*) ;
 int udelay (int) ;

__attribute__((used)) static s32 ixgbe_iosf_wait(struct ixgbe_hw *hw, u32 *ctrl)
{
 u32 i, command;





 for (i = 0; i < IXGBE_MDIO_COMMAND_TIMEOUT; i++) {
  command = IXGBE_READ_REG(hw, IXGBE_SB_IOSF_INDIRECT_CTRL);
  if (!(command & IXGBE_SB_IOSF_CTRL_BUSY))
   break;
  udelay(10);
 }
 if (ctrl)
  *ctrl = command;
 if (i == IXGBE_MDIO_COMMAND_TIMEOUT) {
  hw_dbg(hw, "IOSF wait timed out\n");
  return IXGBE_ERR_PHY;
 }

 return 0;
}
