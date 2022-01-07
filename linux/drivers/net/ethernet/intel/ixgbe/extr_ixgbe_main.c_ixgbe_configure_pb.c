
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int (* set_rxpba ) (struct ixgbe_hw*,int ,int,int ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbe_adapter {int flags; int fdir_pballoc; int hw_tcs; struct ixgbe_hw hw; } ;


 int IXGBE_FLAG_FDIR_HASH_CAPABLE ;
 int IXGBE_FLAG_FDIR_PERFECT_CAPABLE ;
 int PBA_STRATEGY_EQUAL ;
 int ixgbe_pbthresh_setup (struct ixgbe_adapter*) ;
 int stub1 (struct ixgbe_hw*,int ,int,int ) ;

__attribute__((used)) static void ixgbe_configure_pb(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 int hdrm;
 u8 tc = adapter->hw_tcs;

 if (adapter->flags & IXGBE_FLAG_FDIR_HASH_CAPABLE ||
     adapter->flags & IXGBE_FLAG_FDIR_PERFECT_CAPABLE)
  hdrm = 32 << adapter->fdir_pballoc;
 else
  hdrm = 0;

 hw->mac.ops.set_rxpba(hw, tc, hdrm, PBA_STRATEGY_EQUAL);
 ixgbe_pbthresh_setup(adapter);
}
