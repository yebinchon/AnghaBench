
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ixgbe_ring_feature {int mask; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {int num_vfs; struct ixgbe_ring_feature* ring_feature; struct ixgbe_hw hw; } ;


 int IXGBE_PVFTDHN (int,int,int) ;
 int IXGBE_PVFTDTN (int,int,int) ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 size_t RING_F_VMDQ ;
 int __ALIGN_MASK (int,int ) ;
 scalar_t__ ixgbe_mac_X550 ;

__attribute__((used)) static bool ixgbe_vf_tx_pending(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 struct ixgbe_ring_feature *vmdq = &adapter->ring_feature[RING_F_VMDQ];
 u32 q_per_pool = __ALIGN_MASK(1, ~vmdq->mask);

 int i, j;

 if (!adapter->num_vfs)
  return 0;


 if (hw->mac.type >= ixgbe_mac_X550)
  return 0;

 for (i = 0; i < adapter->num_vfs; i++) {
  for (j = 0; j < q_per_pool; j++) {
   u32 h, t;

   h = IXGBE_READ_REG(hw, IXGBE_PVFTDHN(q_per_pool, i, j));
   t = IXGBE_READ_REG(hw, IXGBE_PVFTDTN(q_per_pool, i, j));

   if (h != t)
    return 1;
  }
 }

 return 0;
}
