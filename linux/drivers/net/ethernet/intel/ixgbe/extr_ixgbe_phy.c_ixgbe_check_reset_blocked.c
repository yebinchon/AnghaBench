
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;


 int IXGBE_MMNGC ;
 int IXGBE_MMNGC_MNG_VETO ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int hw_dbg (struct ixgbe_hw*,char*) ;
 scalar_t__ ixgbe_mac_82598EB ;

bool ixgbe_check_reset_blocked(struct ixgbe_hw *hw)
{
 u32 mmngc;


 if (hw->mac.type == ixgbe_mac_82598EB)
  return 0;

 mmngc = IXGBE_READ_REG(hw, IXGBE_MMNGC);
 if (mmngc & IXGBE_MMNGC_MNG_VETO) {
  hw_dbg(hw, "MNG_VETO bit detected.\n");
  return 1;
 }

 return 0;
}
