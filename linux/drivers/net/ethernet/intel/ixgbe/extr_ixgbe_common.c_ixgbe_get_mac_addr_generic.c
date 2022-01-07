
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int IXGBE_RAH (int ) ;
 int IXGBE_RAL (int ) ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;

s32 ixgbe_get_mac_addr_generic(struct ixgbe_hw *hw, u8 *mac_addr)
{
 u32 rar_high;
 u32 rar_low;
 u16 i;

 rar_high = IXGBE_READ_REG(hw, IXGBE_RAH(0));
 rar_low = IXGBE_READ_REG(hw, IXGBE_RAL(0));

 for (i = 0; i < 4; i++)
  mac_addr[i] = (u8)(rar_low >> (i*8));

 for (i = 0; i < 2; i++)
  mac_addr[i+4] = (u8)(rar_high >> (i*8));

 return 0;
}
