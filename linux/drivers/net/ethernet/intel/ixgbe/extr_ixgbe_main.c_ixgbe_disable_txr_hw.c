
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ixgbe_ring {int reg_idx; } ;
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;


 int IXGBE_MAX_RX_DESC_POLL ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_TXDCTL (int ) ;
 int IXGBE_TXDCTL_ENABLE ;
 int IXGBE_TXDCTL_SWFLSH ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int drv ;
 int e_err (int ,char*) ;
 int ixgbe_get_completion_timeout (struct ixgbe_adapter*) ;
 int usleep_range (unsigned long,unsigned long) ;

__attribute__((used)) static void ixgbe_disable_txr_hw(struct ixgbe_adapter *adapter,
     struct ixgbe_ring *tx_ring)
{
 unsigned long wait_delay, delay_interval;
 struct ixgbe_hw *hw = &adapter->hw;
 u8 reg_idx = tx_ring->reg_idx;
 int wait_loop;
 u32 txdctl;

 IXGBE_WRITE_REG(hw, IXGBE_TXDCTL(reg_idx), IXGBE_TXDCTL_SWFLSH);


 delay_interval = ixgbe_get_completion_timeout(adapter) / 100;

 wait_loop = IXGBE_MAX_RX_DESC_POLL;
 wait_delay = delay_interval;

 while (wait_loop--) {
  usleep_range(wait_delay, wait_delay + 10);
  wait_delay += delay_interval * 2;
  txdctl = IXGBE_READ_REG(hw, IXGBE_TXDCTL(reg_idx));

  if (!(txdctl & IXGBE_TXDCTL_ENABLE))
   return;
 }

 e_err(drv, "TXDCTL.ENABLE not cleared within the polling period\n");
}
