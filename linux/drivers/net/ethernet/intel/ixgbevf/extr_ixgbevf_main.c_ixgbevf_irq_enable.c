
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_hw {int dummy; } ;
struct ixgbevf_adapter {int eims_enable_mask; struct ixgbe_hw hw; } ;


 int IXGBE_VTEIAC ;
 int IXGBE_VTEIAM ;
 int IXGBE_VTEIMS ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;

__attribute__((used)) static inline void ixgbevf_irq_enable(struct ixgbevf_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;

 IXGBE_WRITE_REG(hw, IXGBE_VTEIAM, adapter->eims_enable_mask);
 IXGBE_WRITE_REG(hw, IXGBE_VTEIAC, adapter->eims_enable_mask);
 IXGBE_WRITE_REG(hw, IXGBE_VTEIMS, adapter->eims_enable_mask);
}
