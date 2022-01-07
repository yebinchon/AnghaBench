
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ksz_hw {scalar_t__ io; } ;


 scalar_t__ KS_DMA_RX_ADDR ;
 scalar_t__ KS_DMA_TX_ADDR ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void hw_set_desc_base(struct ksz_hw *hw, u32 tx_addr, u32 rx_addr)
{

 writel(tx_addr, hw->io + KS_DMA_TX_ADDR);
 writel(rx_addr, hw->io + KS_DMA_RX_ADDR);
}
