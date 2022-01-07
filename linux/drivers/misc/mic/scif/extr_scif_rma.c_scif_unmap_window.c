
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scif_window {int nr_contig_chunks; int* dma_addr; int* num_pages; TYPE_2__* st; } ;
struct scif_dev {TYPE_1__* sdev; } ;
struct TYPE_5__ {int nents; int sgl; } ;
struct TYPE_4__ {int dev; } ;


 int DMA_BIDIRECTIONAL ;
 int PAGE_SHIFT ;
 int dma_unmap_sg (int *,int ,int ,int ) ;
 int kfree (TYPE_2__*) ;
 scalar_t__ scif_is_iommu_enabled () ;
 int scif_unmap_single (int,struct scif_dev*,int) ;
 int scifdev_self (struct scif_dev*) ;
 int sg_free_table (TYPE_2__*) ;

void scif_unmap_window(struct scif_dev *remote_dev, struct scif_window *window)
{
 int j;

 if (scif_is_iommu_enabled() && !scifdev_self(remote_dev)) {
  if (window->st) {
   dma_unmap_sg(&remote_dev->sdev->dev,
         window->st->sgl, window->st->nents,
         DMA_BIDIRECTIONAL);
   sg_free_table(window->st);
   kfree(window->st);
   window->st = ((void*)0);
  }
 } else {
  for (j = 0; j < window->nr_contig_chunks; j++) {
   if (window->dma_addr[j]) {
    scif_unmap_single(window->dma_addr[j],
        remote_dev,
        window->num_pages[j] <<
        PAGE_SHIFT);
    window->dma_addr[j] = 0x0;
   }
  }
 }
}
