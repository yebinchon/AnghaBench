
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pch_gbe_hw {TYPE_1__* reg; } ;
struct TYPE_2__ {int DMA_CTRL; } ;


 int PCH_GBE_RX_DMA_EN ;
 int ioread32 (int *) ;
 int iowrite32 (int ,int *) ;

__attribute__((used)) static void pch_gbe_disable_dma_rx(struct pch_gbe_hw *hw)
{
 u32 rxdma;


 rxdma = ioread32(&hw->reg->DMA_CTRL);
 rxdma &= ~PCH_GBE_RX_DMA_EN;
 iowrite32(rxdma, &hw->reg->DMA_CTRL);
}
