
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ixgbe_ring {int reg_idx; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;


 int IXGBE_LINKS ;
 int IXGBE_LINKS_UP ;
 int IXGBE_MAX_RX_DESC_POLL ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RXDCTL (int ) ;
 int IXGBE_RXDCTL_ENABLE ;
 int IXGBE_RXDCTL_SWFLSH ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int drv ;
 int e_err (int ,char*) ;
 int ixgbe_get_completion_timeout (struct ixgbe_adapter*) ;
 scalar_t__ ixgbe_mac_82598EB ;
 int usleep_range (unsigned long,unsigned long) ;

__attribute__((used)) static void ixgbe_disable_rxr_hw(struct ixgbe_adapter *adapter,
     struct ixgbe_ring *rx_ring)
{
 unsigned long wait_delay, delay_interval;
 struct ixgbe_hw *hw = &adapter->hw;
 u8 reg_idx = rx_ring->reg_idx;
 int wait_loop;
 u32 rxdctl;

 rxdctl = IXGBE_READ_REG(hw, IXGBE_RXDCTL(reg_idx));
 rxdctl &= ~IXGBE_RXDCTL_ENABLE;
 rxdctl |= IXGBE_RXDCTL_SWFLSH;


 IXGBE_WRITE_REG(hw, IXGBE_RXDCTL(reg_idx), rxdctl);


 if (hw->mac.type == ixgbe_mac_82598EB &&
     !(IXGBE_READ_REG(hw, IXGBE_LINKS) & IXGBE_LINKS_UP))
  return;


 delay_interval = ixgbe_get_completion_timeout(adapter) / 100;

 wait_loop = IXGBE_MAX_RX_DESC_POLL;
 wait_delay = delay_interval;

 while (wait_loop--) {
  usleep_range(wait_delay, wait_delay + 10);
  wait_delay += delay_interval * 2;
  rxdctl = IXGBE_READ_REG(hw, IXGBE_RXDCTL(reg_idx));

  if (!(rxdctl & IXGBE_RXDCTL_ENABLE))
   return;
 }

 e_err(drv, "RXDCTL.ENABLE not cleared within the polling period\n");
}
