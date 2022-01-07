
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;


 int IXGBE_FWSM (struct ixgbe_hw*) ;
 int IXGBE_FWSM_FW_MODE_PT ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 scalar_t__ ixgbe_mac_82599EB ;

bool ixgbe_mng_present(struct ixgbe_hw *hw)
{
 u32 fwsm;

 if (hw->mac.type < ixgbe_mac_82599EB)
  return 0;

 fwsm = IXGBE_READ_REG(hw, IXGBE_FWSM(hw));

 return !!(fwsm & IXGBE_FWSM_FW_MODE_PT);
}
