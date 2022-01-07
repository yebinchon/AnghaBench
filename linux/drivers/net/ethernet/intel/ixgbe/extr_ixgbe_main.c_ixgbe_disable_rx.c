
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ixgbe_ring {int reg_idx; } ;
struct TYPE_3__ {int (* disable_rx ) (struct ixgbe_hw*) ;} ;
struct TYPE_4__ {scalar_t__ type; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; int hw_addr; } ;
struct ixgbe_adapter {int num_rx_queues; struct ixgbe_ring** rx_ring; struct ixgbe_hw hw; } ;


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
 scalar_t__ ixgbe_removed (int ) ;
 int stub1 (struct ixgbe_hw*) ;
 int usleep_range (unsigned long,unsigned long) ;

void ixgbe_disable_rx(struct ixgbe_adapter *adapter)
{
 unsigned long wait_delay, delay_interval;
 struct ixgbe_hw *hw = &adapter->hw;
 int i, wait_loop;
 u32 rxdctl;


 hw->mac.ops.disable_rx(hw);

 if (ixgbe_removed(hw->hw_addr))
  return;


 for (i = 0; i < adapter->num_rx_queues; i++) {
  struct ixgbe_ring *ring = adapter->rx_ring[i];
  u8 reg_idx = ring->reg_idx;

  rxdctl = IXGBE_READ_REG(hw, IXGBE_RXDCTL(reg_idx));
  rxdctl &= ~IXGBE_RXDCTL_ENABLE;
  rxdctl |= IXGBE_RXDCTL_SWFLSH;


  IXGBE_WRITE_REG(hw, IXGBE_RXDCTL(reg_idx), rxdctl);
 }


 if (hw->mac.type == ixgbe_mac_82598EB &&
     !(IXGBE_READ_REG(hw, IXGBE_LINKS) & IXGBE_LINKS_UP))
  return;
 delay_interval = ixgbe_get_completion_timeout(adapter) / 100;

 wait_loop = IXGBE_MAX_RX_DESC_POLL;
 wait_delay = delay_interval;

 while (wait_loop--) {
  usleep_range(wait_delay, wait_delay + 10);
  wait_delay += delay_interval * 2;
  rxdctl = 0;






  for (i = 0; i < adapter->num_rx_queues; i++) {
   struct ixgbe_ring *ring = adapter->rx_ring[i];
   u8 reg_idx = ring->reg_idx;

   rxdctl |= IXGBE_READ_REG(hw, IXGBE_RXDCTL(reg_idx));
  }

  if (!(rxdctl & IXGBE_RXDCTL_ENABLE))
   return;
 }

 e_err(drv,
       "RXDCTL.ENABLE for one or more queues not cleared within the polling period\n");
}
