
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct bnxt_ring_mem_info {int nr_pages; size_t page_size; int flags; int ** vmem; scalar_t__ vmem_size; int * pg_tbl; int pg_tbl_map; int ** pg_arr; int * dma_arr; } ;
struct bnxt {struct pci_dev* pdev; } ;


 int BNXT_RMEM_USE_FULL_PAGE_FLAG ;
 int dma_free_coherent (int *,size_t,int *,int ) ;
 int vfree (int *) ;

__attribute__((used)) static void bnxt_free_ring(struct bnxt *bp, struct bnxt_ring_mem_info *rmem)
{
 struct pci_dev *pdev = bp->pdev;
 int i;

 for (i = 0; i < rmem->nr_pages; i++) {
  if (!rmem->pg_arr[i])
   continue;

  dma_free_coherent(&pdev->dev, rmem->page_size,
      rmem->pg_arr[i], rmem->dma_arr[i]);

  rmem->pg_arr[i] = ((void*)0);
 }
 if (rmem->pg_tbl) {
  size_t pg_tbl_size = rmem->nr_pages * 8;

  if (rmem->flags & BNXT_RMEM_USE_FULL_PAGE_FLAG)
   pg_tbl_size = rmem->page_size;
  dma_free_coherent(&pdev->dev, pg_tbl_size,
      rmem->pg_tbl, rmem->pg_tbl_map);
  rmem->pg_tbl = ((void*)0);
 }
 if (rmem->vmem_size && *rmem->vmem) {
  vfree(*rmem->vmem);
  *rmem->vmem = ((void*)0);
 }
}
