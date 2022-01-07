
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct et131x_adapter {TYPE_2__* regs; } ;
struct TYPE_3__ {int csr; } ;
struct TYPE_4__ {TYPE_1__ txdma; } ;


 int ET_TXDMA_CACHE_SHIFT ;
 int ET_TXDMA_SNGL_EPKT ;
 int PARM_DMA_CACHE_DEF ;
 int writel (int,int *) ;

__attribute__((used)) static void et131x_tx_dma_enable(struct et131x_adapter *adapter)
{



 writel(ET_TXDMA_SNGL_EPKT | (PARM_DMA_CACHE_DEF << ET_TXDMA_CACHE_SHIFT),
        &adapter->regs->txdma.csr);
}
