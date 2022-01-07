
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_4__ {int (* disable_rx ) (struct ixgbe_hw*) ;} ;
struct TYPE_3__ {scalar_t__ max_tx_queues; scalar_t__ max_rx_queues; TYPE_2__ ops; } ;
struct ixgbe_hw {int adapter_stopped; TYPE_1__ mac; } ;
typedef int s32 ;


 int IXGBE_EICR ;
 int IXGBE_EIMC ;
 int IXGBE_IRQ_CLEAR_MASK ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RXDCTL (scalar_t__) ;
 int IXGBE_RXDCTL_ENABLE ;
 int IXGBE_RXDCTL_SWFLSH ;
 int IXGBE_TXDCTL (scalar_t__) ;
 int IXGBE_TXDCTL_SWFLSH ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int ixgbe_disable_pcie_master (struct ixgbe_hw*) ;
 int stub1 (struct ixgbe_hw*) ;
 int usleep_range (int,int) ;

s32 ixgbe_stop_adapter_generic(struct ixgbe_hw *hw)
{
 u32 reg_val;
 u16 i;





 hw->adapter_stopped = 1;


 hw->mac.ops.disable_rx(hw);


 IXGBE_WRITE_REG(hw, IXGBE_EIMC, IXGBE_IRQ_CLEAR_MASK);


 IXGBE_READ_REG(hw, IXGBE_EICR);


 for (i = 0; i < hw->mac.max_tx_queues; i++)
  IXGBE_WRITE_REG(hw, IXGBE_TXDCTL(i), IXGBE_TXDCTL_SWFLSH);


 for (i = 0; i < hw->mac.max_rx_queues; i++) {
  reg_val = IXGBE_READ_REG(hw, IXGBE_RXDCTL(i));
  reg_val &= ~IXGBE_RXDCTL_ENABLE;
  reg_val |= IXGBE_RXDCTL_SWFLSH;
  IXGBE_WRITE_REG(hw, IXGBE_RXDCTL(i), reg_val);
 }


 IXGBE_WRITE_FLUSH(hw);
 usleep_range(1000, 2000);





 return ixgbe_disable_pcie_master(hw);
}
