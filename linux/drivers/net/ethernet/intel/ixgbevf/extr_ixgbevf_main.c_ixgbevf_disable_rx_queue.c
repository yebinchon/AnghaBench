
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ixgbevf_ring {int reg_idx; } ;
struct ixgbe_hw {int hw_addr; } ;
struct ixgbevf_adapter {struct ixgbe_hw hw; } ;


 int IXGBEVF_MAX_RX_DESC_POLL ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 scalar_t__ IXGBE_REMOVED (int ) ;
 int IXGBE_RXDCTL_ENABLE ;
 int IXGBE_VFRXDCTL (int ) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int pr_err (char*,int ) ;
 int udelay (int) ;

__attribute__((used)) static void ixgbevf_disable_rx_queue(struct ixgbevf_adapter *adapter,
         struct ixgbevf_ring *ring)
{
 struct ixgbe_hw *hw = &adapter->hw;
 int wait_loop = IXGBEVF_MAX_RX_DESC_POLL;
 u32 rxdctl;
 u8 reg_idx = ring->reg_idx;

 if (IXGBE_REMOVED(hw->hw_addr))
  return;
 rxdctl = IXGBE_READ_REG(hw, IXGBE_VFRXDCTL(reg_idx));
 rxdctl &= ~IXGBE_RXDCTL_ENABLE;


 IXGBE_WRITE_REG(hw, IXGBE_VFRXDCTL(reg_idx), rxdctl);


 do {
  udelay(10);
  rxdctl = IXGBE_READ_REG(hw, IXGBE_VFRXDCTL(reg_idx));
 } while (--wait_loop && (rxdctl & IXGBE_RXDCTL_ENABLE));

 if (!wait_loop)
  pr_err("RXDCTL.ENABLE queue %d not cleared while polling\n",
         reg_idx);
}
