
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int IXGBE_HW_READ_REG ;
 int IXGBE_MDIO_COMMAND_TIMEOUT ;
 int IXGBE_MSCA ;
 int IXGBE_MSCA_MDI_COMMAND ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int readx_poll_timeout (int ,int ,int,int,int,int) ;

__attribute__((used)) static s32 ixgbe_msca_cmd(struct ixgbe_hw *hw, u32 cmd)
{
 IXGBE_WRITE_REG(hw, IXGBE_MSCA, cmd);

 return readx_poll_timeout(IXGBE_HW_READ_REG, IXGBE_MSCA, cmd,
      !(cmd & IXGBE_MSCA_MDI_COMMAND), 10,
      10 * IXGBE_MDIO_COMMAND_TIMEOUT);
}
