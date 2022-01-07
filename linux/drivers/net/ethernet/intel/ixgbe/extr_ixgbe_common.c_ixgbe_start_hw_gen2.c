
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ max_tx_queues; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
typedef int s32 ;


 int IXGBE_RTTBCNRC ;
 int IXGBE_RTTDQSEL ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,scalar_t__) ;

s32 ixgbe_start_hw_gen2(struct ixgbe_hw *hw)
{
 u32 i;


 for (i = 0; i < hw->mac.max_tx_queues; i++) {
  IXGBE_WRITE_REG(hw, IXGBE_RTTDQSEL, i);
  IXGBE_WRITE_REG(hw, IXGBE_RTTBCNRC, 0);
 }
 IXGBE_WRITE_FLUSH(hw);

 return 0;
}
