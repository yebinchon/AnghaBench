
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ksz_port_info {int duplex; } ;
struct ksz_port {int dummy; } ;
struct ksz_hw {int features; int overrides; scalar_t__ io; int tx_cfg; scalar_t__ enabled; } ;


 int DMA_TX_FLOW_ENABLE ;
 int HALF_DUPLEX_SIGNAL_BUG ;
 scalar_t__ KS_DMA_TX_CTRL ;
 int PAUSE_FLOW_CTRL ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void port_cfg_change(struct ksz_hw *hw, struct ksz_port *port,
 struct ksz_port_info *info, u16 link_status)
{
 if ((hw->features & HALF_DUPLEX_SIGNAL_BUG) &&
   !(hw->overrides & PAUSE_FLOW_CTRL)) {
  u32 cfg = hw->tx_cfg;


  if (1 == info->duplex)
   hw->tx_cfg &= ~DMA_TX_FLOW_ENABLE;
  if (hw->enabled && cfg != hw->tx_cfg)
   writel(hw->tx_cfg, hw->io + KS_DMA_TX_CTRL);
 }
}
