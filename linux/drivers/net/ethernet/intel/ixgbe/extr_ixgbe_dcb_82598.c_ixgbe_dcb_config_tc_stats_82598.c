
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RQSMR (int) ;
 int IXGBE_TQSMR (int) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;

__attribute__((used)) static s32 ixgbe_dcb_config_tc_stats_82598(struct ixgbe_hw *hw)
{
 u32 reg = 0;
 u8 i = 0;
 u8 j = 0;


 for (i = 0, j = 0; i < 15 && j < 8; i = i + 2, j++) {
  reg = IXGBE_READ_REG(hw, IXGBE_RQSMR(i));
  reg |= ((0x1010101) * j);
  IXGBE_WRITE_REG(hw, IXGBE_RQSMR(i), reg);
  reg = IXGBE_READ_REG(hw, IXGBE_RQSMR(i + 1));
  reg |= ((0x1010101) * j);
  IXGBE_WRITE_REG(hw, IXGBE_RQSMR(i + 1), reg);
 }

 for (i = 0; i < 8; i++) {
  reg = IXGBE_READ_REG(hw, IXGBE_TQSMR(i));
  reg |= ((0x1010101) * i);
  IXGBE_WRITE_REG(hw, IXGBE_TQSMR(i), reg);
 }

 return 0;
}
