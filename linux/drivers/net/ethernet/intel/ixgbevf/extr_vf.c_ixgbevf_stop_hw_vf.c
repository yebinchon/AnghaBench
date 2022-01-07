
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ max_rx_queues; scalar_t__ max_tx_queues; } ;
struct ixgbe_hw {int adapter_stopped; TYPE_1__ mac; } ;
typedef int s32 ;


 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 scalar_t__ IXGBE_RXDCTL_ENABLE ;
 scalar_t__ IXGBE_TXDCTL_ENABLE ;
 int IXGBE_VFRXDCTL (scalar_t__) ;
 int IXGBE_VFTXDCTL (scalar_t__) ;
 scalar_t__ IXGBE_VF_IRQ_CLEAR_MASK ;
 int IXGBE_VTEICR ;
 int IXGBE_VTEIMC ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,scalar_t__) ;

__attribute__((used)) static s32 ixgbevf_stop_hw_vf(struct ixgbe_hw *hw)
{
 u32 number_of_queues;
 u32 reg_val;
 u16 i;




 hw->adapter_stopped = 1;


 number_of_queues = hw->mac.max_rx_queues;
 for (i = 0; i < number_of_queues; i++) {
  reg_val = IXGBE_READ_REG(hw, IXGBE_VFRXDCTL(i));
  if (reg_val & IXGBE_RXDCTL_ENABLE) {
   reg_val &= ~IXGBE_RXDCTL_ENABLE;
   IXGBE_WRITE_REG(hw, IXGBE_VFRXDCTL(i), reg_val);
  }
 }

 IXGBE_WRITE_FLUSH(hw);


 IXGBE_WRITE_REG(hw, IXGBE_VTEIMC, IXGBE_VF_IRQ_CLEAR_MASK);


 IXGBE_READ_REG(hw, IXGBE_VTEICR);


 number_of_queues = hw->mac.max_tx_queues;
 for (i = 0; i < number_of_queues; i++) {
  reg_val = IXGBE_READ_REG(hw, IXGBE_VFTXDCTL(i));
  if (reg_val & IXGBE_TXDCTL_ENABLE) {
   reg_val &= ~IXGBE_TXDCTL_ENABLE;
   IXGBE_WRITE_REG(hw, IXGBE_VFTXDCTL(i), reg_val);
  }
 }

 return 0;
}
