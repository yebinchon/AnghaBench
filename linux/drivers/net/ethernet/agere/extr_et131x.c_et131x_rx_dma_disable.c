
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct et131x_adapter {TYPE_1__* pdev; TYPE_3__* regs; } ;
struct TYPE_5__ {int csr; } ;
struct TYPE_6__ {TYPE_2__ rxdma; } ;
struct TYPE_4__ {int dev; } ;


 int ET_RXDMA_CSR_FBR1_ENABLE ;
 int ET_RXDMA_CSR_HALT ;
 int ET_RXDMA_CSR_HALT_STATUS ;
 int dev_err (int *,char*,int) ;
 int readl (int *) ;
 int udelay (int) ;
 int writel (int,int *) ;

__attribute__((used)) static void et131x_rx_dma_disable(struct et131x_adapter *adapter)
{
 u32 csr;

 writel(ET_RXDMA_CSR_HALT | ET_RXDMA_CSR_FBR1_ENABLE,
        &adapter->regs->rxdma.csr);
 csr = readl(&adapter->regs->rxdma.csr);
 if (!(csr & ET_RXDMA_CSR_HALT_STATUS)) {
  udelay(5);
  csr = readl(&adapter->regs->rxdma.csr);
  if (!(csr & ET_RXDMA_CSR_HALT_STATUS))
   dev_err(&adapter->pdev->dev,
    "RX Dma failed to enter halt state. CSR 0x%08x\n",
    csr);
 }
}
