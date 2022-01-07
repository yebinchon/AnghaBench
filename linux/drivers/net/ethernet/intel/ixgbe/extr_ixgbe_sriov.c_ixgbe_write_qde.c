
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_ring_feature {int mask; } ;
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {struct ixgbe_ring_feature* ring_feature; struct ixgbe_hw hw; } ;


 int IXGBE_QDE ;
 int IXGBE_QDE_IDX_SHIFT ;
 int IXGBE_QDE_WRITE ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 size_t RING_F_VMDQ ;
 int __ALIGN_MASK (int,int ) ;

__attribute__((used)) static inline void ixgbe_write_qde(struct ixgbe_adapter *adapter, u32 vf,
       u32 qde)
{
 struct ixgbe_hw *hw = &adapter->hw;
 struct ixgbe_ring_feature *vmdq = &adapter->ring_feature[RING_F_VMDQ];
 u32 q_per_pool = __ALIGN_MASK(1, ~vmdq->mask);
 int i;

 for (i = vf * q_per_pool; i < ((vf + 1) * q_per_pool); i++) {
  u32 reg;


  IXGBE_WRITE_FLUSH(hw);


  reg = IXGBE_QDE_WRITE | qde;
  reg |= i << IXGBE_QDE_IDX_SHIFT;
  IXGBE_WRITE_REG(hw, IXGBE_QDE, reg);
 }
}
