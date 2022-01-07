
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ksz_hw {scalar_t__ io; int tx_cfg; int rx_cfg; scalar_t__ enabled; } ;


 int DMA_RX_FLOW_ENABLE ;
 int DMA_TX_FLOW_ENABLE ;
 scalar_t__ KS_DMA_RX_CTRL ;
 scalar_t__ KS_DMA_TX_CTRL ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void set_flow_ctrl(struct ksz_hw *hw, int rx, int tx)
{
 u32 rx_cfg;
 u32 tx_cfg;

 rx_cfg = hw->rx_cfg;
 tx_cfg = hw->tx_cfg;
 if (rx)
  hw->rx_cfg |= DMA_RX_FLOW_ENABLE;
 else
  hw->rx_cfg &= ~DMA_RX_FLOW_ENABLE;
 if (tx)
  hw->tx_cfg |= DMA_TX_FLOW_ENABLE;
 else
  hw->tx_cfg &= ~DMA_TX_FLOW_ENABLE;
 if (hw->enabled) {
  if (rx_cfg != hw->rx_cfg)
   writel(hw->rx_cfg, hw->io + KS_DMA_RX_CTRL);
  if (tx_cfg != hw->tx_cfg)
   writel(hw->tx_cfg, hw->io + KS_DMA_TX_CTRL);
 }
}
