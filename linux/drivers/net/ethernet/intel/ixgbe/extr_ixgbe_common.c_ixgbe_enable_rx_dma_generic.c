
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int (* disable_rx ) (struct ixgbe_hw*) ;int (* enable_rx ) (struct ixgbe_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
typedef int s32 ;


 int IXGBE_RXCTRL_RXEN ;
 int stub1 (struct ixgbe_hw*) ;
 int stub2 (struct ixgbe_hw*) ;

s32 ixgbe_enable_rx_dma_generic(struct ixgbe_hw *hw, u32 regval)
{
 if (regval & IXGBE_RXCTRL_RXEN)
  hw->mac.ops.enable_rx(hw);
 else
  hw->mac.ops.disable_rx(hw);

 return 0;
}
