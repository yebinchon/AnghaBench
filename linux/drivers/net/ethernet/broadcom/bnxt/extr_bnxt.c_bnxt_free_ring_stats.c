
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct bnxt_cp_ring_info {int * hw_stats; int hw_stats_map; } ;
struct bnxt_napi {struct bnxt_cp_ring_info cp_ring; } ;
struct bnxt {int hw_ring_stats_size; int cp_nr_rings; struct bnxt_napi** bnapi; struct pci_dev* pdev; } ;


 int dma_free_coherent (int *,int,int *,int ) ;

__attribute__((used)) static void bnxt_free_ring_stats(struct bnxt *bp)
{
 struct pci_dev *pdev = bp->pdev;
 int size, i;

 if (!bp->bnapi)
  return;

 size = bp->hw_ring_stats_size;

 for (i = 0; i < bp->cp_nr_rings; i++) {
  struct bnxt_napi *bnapi = bp->bnapi[i];
  struct bnxt_cp_ring_info *cpr = &bnapi->cp_ring;

  if (cpr->hw_stats) {
   dma_free_coherent(&pdev->dev, size, cpr->hw_stats,
       cpr->hw_stats_map);
   cpr->hw_stats = ((void*)0);
  }
 }
}
