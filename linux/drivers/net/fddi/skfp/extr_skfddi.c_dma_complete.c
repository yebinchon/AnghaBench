
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dma_addr; scalar_t__ skb; } ;
struct s_smt_fp_rxd {TYPE_1__ rxd_os; } ;
union s_fp_descr {struct s_smt_fp_rxd r; } ;
struct TYPE_4__ {int MaxFrameSize; int pdev; } ;
struct s_smc {TYPE_2__ os; } ;
typedef TYPE_2__ skfddi_priv ;


 int DMA_WR ;
 int PCI_DMA_FROMDEVICE ;
 int pci_unmap_single (int *,scalar_t__,int,int ) ;

void dma_complete(struct s_smc *smc, volatile union s_fp_descr *descr, int flag)
{
 if (flag & DMA_WR) {
  skfddi_priv *bp = &smc->os;
  volatile struct s_smt_fp_rxd *r = &descr->r;


  if (r->rxd_os.skb && r->rxd_os.dma_addr) {
   int MaxFrameSize = bp->MaxFrameSize;

   pci_unmap_single(&bp->pdev, r->rxd_os.dma_addr,
      MaxFrameSize, PCI_DMA_FROMDEVICE);
   r->rxd_os.dma_addr = 0;
  }
 }
}
