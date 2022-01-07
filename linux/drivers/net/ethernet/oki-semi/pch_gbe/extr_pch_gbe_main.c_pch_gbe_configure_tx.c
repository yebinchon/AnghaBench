
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct pch_gbe_hw {TYPE_2__* reg; } ;
struct pch_gbe_adapter {TYPE_1__* tx_ring; int netdev; struct pch_gbe_hw hw; } ;
struct TYPE_4__ {int DMA_CTRL; int TX_DSC_SW_P; int TX_DSC_SIZE; int TX_DSC_BASE; } ;
struct TYPE_3__ {scalar_t__ size; scalar_t__ dma; } ;


 scalar_t__ PCH_GBE_TX_DMA_EN ;
 scalar_t__ ioread32 (int *) ;
 int iowrite32 (scalar_t__,int *) ;
 int netdev_dbg (int ,char*,unsigned long long,scalar_t__) ;

__attribute__((used)) static void pch_gbe_configure_tx(struct pch_gbe_adapter *adapter)
{
 struct pch_gbe_hw *hw = &adapter->hw;
 u32 tdba, tdlen, dctrl;

 netdev_dbg(adapter->netdev, "dma addr = 0x%08llx  size = 0x%08x\n",
     (unsigned long long)adapter->tx_ring->dma,
     adapter->tx_ring->size);


 tdba = adapter->tx_ring->dma;
 tdlen = adapter->tx_ring->size - 0x10;
 iowrite32(tdba, &hw->reg->TX_DSC_BASE);
 iowrite32(tdlen, &hw->reg->TX_DSC_SIZE);
 iowrite32(tdba, &hw->reg->TX_DSC_SW_P);


 dctrl = ioread32(&hw->reg->DMA_CTRL);
 dctrl |= PCH_GBE_TX_DMA_EN;
 iowrite32(dctrl, &hw->reg->DMA_CTRL);
}
