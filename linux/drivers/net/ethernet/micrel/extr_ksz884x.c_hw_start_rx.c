
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_hw {int rx_stop; scalar_t__ io; int intr_mask; int rx_cfg; } ;


 int DMA_START ;
 int KS884X_INT_RX_STOPPED ;
 scalar_t__ KS_DMA_RX_CTRL ;
 scalar_t__ KS_DMA_RX_START ;
 int hw_ack_intr (struct ksz_hw*,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void hw_start_rx(struct ksz_hw *hw)
{
 writel(hw->rx_cfg, hw->io + KS_DMA_RX_CTRL);


 hw->intr_mask |= KS884X_INT_RX_STOPPED;

 writel(DMA_START, hw->io + KS_DMA_RX_START);
 hw_ack_intr(hw, KS884X_INT_RX_STOPPED);
 hw->rx_stop++;


 if (0 == hw->rx_stop)
  hw->rx_stop = 2;
}
