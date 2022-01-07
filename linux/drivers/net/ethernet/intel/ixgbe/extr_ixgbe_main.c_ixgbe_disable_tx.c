
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ixgbe_ring {int reg_idx; } ;
struct TYPE_2__ {int type; } ;
struct ixgbe_hw {TYPE_1__ mac; int hw_addr; } ;
struct ixgbe_adapter {int num_tx_queues; int num_xdp_queues; struct ixgbe_ring** xdp_ring; struct ixgbe_ring** tx_ring; struct ixgbe_hw hw; } ;


 int IXGBE_DMATXCTL ;
 int IXGBE_DMATXCTL_TE ;
 int IXGBE_LINKS ;
 int IXGBE_LINKS_UP ;
 int IXGBE_MAX_RX_DESC_POLL ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_TXDCTL (int ) ;
 int IXGBE_TXDCTL_ENABLE ;
 int IXGBE_TXDCTL_SWFLSH ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int drv ;
 int e_err (int ,char*) ;
 int ixgbe_get_completion_timeout (struct ixgbe_adapter*) ;





 scalar_t__ ixgbe_removed (int ) ;
 int usleep_range (unsigned long,unsigned long) ;

void ixgbe_disable_tx(struct ixgbe_adapter *adapter)
{
 unsigned long wait_delay, delay_interval;
 struct ixgbe_hw *hw = &adapter->hw;
 int i, wait_loop;
 u32 txdctl;

 if (ixgbe_removed(hw->hw_addr))
  return;


 for (i = 0; i < adapter->num_tx_queues; i++) {
  struct ixgbe_ring *ring = adapter->tx_ring[i];
  u8 reg_idx = ring->reg_idx;

  IXGBE_WRITE_REG(hw, IXGBE_TXDCTL(reg_idx), IXGBE_TXDCTL_SWFLSH);
 }


 for (i = 0; i < adapter->num_xdp_queues; i++) {
  struct ixgbe_ring *ring = adapter->xdp_ring[i];
  u8 reg_idx = ring->reg_idx;

  IXGBE_WRITE_REG(hw, IXGBE_TXDCTL(reg_idx), IXGBE_TXDCTL_SWFLSH);
 }






 if (!(IXGBE_READ_REG(hw, IXGBE_LINKS) & IXGBE_LINKS_UP))
  goto dma_engine_disable;
 delay_interval = ixgbe_get_completion_timeout(adapter) / 100;

 wait_loop = IXGBE_MAX_RX_DESC_POLL;
 wait_delay = delay_interval;

 while (wait_loop--) {
  usleep_range(wait_delay, wait_delay + 10);
  wait_delay += delay_interval * 2;
  txdctl = 0;






  for (i = 0; i < adapter->num_tx_queues; i++) {
   struct ixgbe_ring *ring = adapter->tx_ring[i];
   u8 reg_idx = ring->reg_idx;

   txdctl |= IXGBE_READ_REG(hw, IXGBE_TXDCTL(reg_idx));
  }
  for (i = 0; i < adapter->num_xdp_queues; i++) {
   struct ixgbe_ring *ring = adapter->xdp_ring[i];
   u8 reg_idx = ring->reg_idx;

   txdctl |= IXGBE_READ_REG(hw, IXGBE_TXDCTL(reg_idx));
  }

  if (!(txdctl & IXGBE_TXDCTL_ENABLE))
   goto dma_engine_disable;
 }

 e_err(drv,
       "TXDCTL.ENABLE for one or more queues not cleared within the polling period\n");

dma_engine_disable:

 switch (hw->mac.type) {
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  IXGBE_WRITE_REG(hw, IXGBE_DMATXCTL,
    (IXGBE_READ_REG(hw, IXGBE_DMATXCTL) &
     ~IXGBE_DMATXCTL_TE));

 default:
  break;
 }
}
