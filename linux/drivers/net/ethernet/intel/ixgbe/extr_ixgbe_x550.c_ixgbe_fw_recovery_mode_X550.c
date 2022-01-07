
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;


 int IXGBE_FWSM (struct ixgbe_hw*) ;
 int IXGBE_FWSM_FW_NVM_RECOVERY_MODE ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;

__attribute__((used)) static bool ixgbe_fw_recovery_mode_X550(struct ixgbe_hw *hw)
{
 u32 fwsm;

 fwsm = IXGBE_READ_REG(hw, IXGBE_FWSM(hw));
 return !!(fwsm & IXGBE_FWSM_FW_NVM_RECOVERY_MODE);
}
