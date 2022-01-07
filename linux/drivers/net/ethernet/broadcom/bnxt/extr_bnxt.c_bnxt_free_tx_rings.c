
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct bnxt_ring_struct {int ring_mem; } ;
struct bnxt_tx_ring_info {struct bnxt_ring_struct tx_ring_struct; int * tx_push; int tx_push_mapping; } ;
struct bnxt {int tx_nr_rings; int tx_push_size; struct bnxt_tx_ring_info* tx_ring; struct pci_dev* pdev; } ;


 int bnxt_free_ring (struct bnxt*,int *) ;
 int dma_free_coherent (int *,int ,int *,int ) ;

__attribute__((used)) static void bnxt_free_tx_rings(struct bnxt *bp)
{
 int i;
 struct pci_dev *pdev = bp->pdev;

 if (!bp->tx_ring)
  return;

 for (i = 0; i < bp->tx_nr_rings; i++) {
  struct bnxt_tx_ring_info *txr = &bp->tx_ring[i];
  struct bnxt_ring_struct *ring;

  if (txr->tx_push) {
   dma_free_coherent(&pdev->dev, bp->tx_push_size,
       txr->tx_push, txr->tx_push_mapping);
   txr->tx_push = ((void*)0);
  }

  ring = &txr->tx_ring_struct;

  bnxt_free_ring(bp, &ring->ring_mem);
 }
}
