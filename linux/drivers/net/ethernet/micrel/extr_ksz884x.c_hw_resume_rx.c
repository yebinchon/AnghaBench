
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_hw {scalar_t__ io; } ;


 int DMA_START ;
 scalar_t__ KS_DMA_RX_START ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void hw_resume_rx(struct ksz_hw *hw)
{
 writel(DMA_START, hw->io + KS_DMA_RX_START);
}
