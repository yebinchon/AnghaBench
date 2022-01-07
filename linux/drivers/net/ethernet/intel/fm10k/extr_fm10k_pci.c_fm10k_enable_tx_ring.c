
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct fm10k_ring {int reg_idx; } ;
struct fm10k_hw {int dummy; } ;
struct fm10k_intfc {int netdev; struct fm10k_hw hw; } ;


 int FM10K_TXDCTL (int ) ;
 int FM10K_TXDCTL_ENABLE ;
 int drv ;
 int fm10k_read_reg (struct fm10k_hw*,int ) ;
 int netif_err (struct fm10k_intfc*,int ,int ,char*,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void fm10k_enable_tx_ring(struct fm10k_intfc *interface,
     struct fm10k_ring *ring)
{
 struct fm10k_hw *hw = &interface->hw;
 int wait_loop = 10;
 u32 txdctl;
 u8 reg_idx = ring->reg_idx;


 if (fm10k_read_reg(hw, FM10K_TXDCTL(reg_idx)) & FM10K_TXDCTL_ENABLE)
  return;


 do {
  usleep_range(1000, 2000);
  txdctl = fm10k_read_reg(hw, FM10K_TXDCTL(reg_idx));
 } while (!(txdctl & FM10K_TXDCTL_ENABLE) && --wait_loop);
 if (!wait_loop)
  netif_err(interface, drv, interface->netdev,
     "Could not enable Tx Queue %d\n", reg_idx);
}
