
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_hw {scalar_t__ io; int tx_cfg; } ;


 scalar_t__ KS_DMA_TX_CTRL ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void hw_start_tx(struct ksz_hw *hw)
{
 writel(hw->tx_cfg, hw->io + KS_DMA_TX_CTRL);
}
