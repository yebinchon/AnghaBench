
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ixgbe_ring {int reg_idx; } ;
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;


 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_SRRCTL (int ) ;
 int IXGBE_SRRCTL_DROP_EN ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;

__attribute__((used)) static void ixgbe_enable_rx_drop(struct ixgbe_adapter *adapter,
     struct ixgbe_ring *ring)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u8 reg_idx = ring->reg_idx;
 u32 srrctl = IXGBE_READ_REG(hw, IXGBE_SRRCTL(reg_idx));

 srrctl |= IXGBE_SRRCTL_DROP_EN;

 IXGBE_WRITE_REG(hw, IXGBE_SRRCTL(reg_idx), srrctl);
}
