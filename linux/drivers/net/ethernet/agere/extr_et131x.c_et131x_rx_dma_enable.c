
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct rx_ring {TYPE_1__** fbr; } ;
struct et131x_adapter {TYPE_4__* pdev; TYPE_3__* regs; struct rx_ring rx_ring; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_6__ {int csr; } ;
struct TYPE_7__ {TYPE_2__ rxdma; } ;
struct TYPE_5__ {int buffsize; } ;


 int ET_RXDMA_CSR_FBR0_ENABLE ;
 int ET_RXDMA_CSR_FBR0_SIZE_HI ;
 int ET_RXDMA_CSR_FBR0_SIZE_LO ;
 int ET_RXDMA_CSR_FBR1_ENABLE ;
 int ET_RXDMA_CSR_FBR1_SIZE_HI ;
 int ET_RXDMA_CSR_FBR1_SIZE_LO ;
 int ET_RXDMA_CSR_HALT_STATUS ;
 int dev_err (int *,char*,int) ;
 int readl (int *) ;
 int udelay (int) ;
 int writel (int,int *) ;

__attribute__((used)) static void et131x_rx_dma_enable(struct et131x_adapter *adapter)
{

 u32 csr = ET_RXDMA_CSR_FBR1_ENABLE;
 struct rx_ring *rx_ring = &adapter->rx_ring;

 if (rx_ring->fbr[1]->buffsize == 4096)
  csr |= ET_RXDMA_CSR_FBR1_SIZE_LO;
 else if (rx_ring->fbr[1]->buffsize == 8192)
  csr |= ET_RXDMA_CSR_FBR1_SIZE_HI;
 else if (rx_ring->fbr[1]->buffsize == 16384)
  csr |= ET_RXDMA_CSR_FBR1_SIZE_LO | ET_RXDMA_CSR_FBR1_SIZE_HI;

 csr |= ET_RXDMA_CSR_FBR0_ENABLE;
 if (rx_ring->fbr[0]->buffsize == 256)
  csr |= ET_RXDMA_CSR_FBR0_SIZE_LO;
 else if (rx_ring->fbr[0]->buffsize == 512)
  csr |= ET_RXDMA_CSR_FBR0_SIZE_HI;
 else if (rx_ring->fbr[0]->buffsize == 1024)
  csr |= ET_RXDMA_CSR_FBR0_SIZE_LO | ET_RXDMA_CSR_FBR0_SIZE_HI;
 writel(csr, &adapter->regs->rxdma.csr);

 csr = readl(&adapter->regs->rxdma.csr);
 if (csr & ET_RXDMA_CSR_HALT_STATUS) {
  udelay(5);
  csr = readl(&adapter->regs->rxdma.csr);
  if (csr & ET_RXDMA_CSR_HALT_STATUS) {
   dev_err(&adapter->pdev->dev,
    "RX Dma failed to exit halt state. CSR 0x%08x\n",
    csr);
  }
 }
}
