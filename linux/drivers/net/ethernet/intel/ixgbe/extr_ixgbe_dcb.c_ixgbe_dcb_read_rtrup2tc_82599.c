
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef size_t u32 ;
struct ixgbe_hw {int dummy; } ;


 size_t IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RTRUP2TC ;
 size_t IXGBE_RTRUP2TC_UP_MASK ;
 size_t IXGBE_RTRUP2TC_UP_SHIFT ;
 size_t MAX_USER_PRIORITY ;

__attribute__((used)) static void ixgbe_dcb_read_rtrup2tc_82599(struct ixgbe_hw *hw, u8 *map)
{
 u32 reg, i;

 reg = IXGBE_READ_REG(hw, IXGBE_RTRUP2TC);
 for (i = 0; i < MAX_USER_PRIORITY; i++)
  map[i] = IXGBE_RTRUP2TC_UP_MASK &
   (reg >> (i * IXGBE_RTRUP2TC_UP_SHIFT));
}
