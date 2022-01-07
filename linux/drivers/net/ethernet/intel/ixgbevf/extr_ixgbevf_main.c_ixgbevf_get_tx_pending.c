
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ixgbevf_ring {scalar_t__ count; int reg_idx; int netdev; } ;
struct ixgbe_hw {int dummy; } ;
struct ixgbevf_adapter {struct ixgbe_hw hw; } ;


 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_VFTDH (int ) ;
 int IXGBE_VFTDT (int ) ;
 struct ixgbevf_adapter* netdev_priv (int ) ;

__attribute__((used)) static u32 ixgbevf_get_tx_pending(struct ixgbevf_ring *ring)
{
 struct ixgbevf_adapter *adapter = netdev_priv(ring->netdev);
 struct ixgbe_hw *hw = &adapter->hw;

 u32 head = IXGBE_READ_REG(hw, IXGBE_VFTDH(ring->reg_idx));
 u32 tail = IXGBE_READ_REG(hw, IXGBE_VFTDT(ring->reg_idx));

 if (head != tail)
  return (head < tail) ?
   tail - head : (tail + ring->count - head);

 return 0;
}
