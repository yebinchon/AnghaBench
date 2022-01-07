
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_dma_ring_info {int size; int desc_info; int mapaddr; int desc; int type; } ;
struct rocker_desc {int dummy; } ;
struct rocker {int pdev; } ;


 int DMA_DESC_ADDR (int ) ;
 int kfree (int ) ;
 int pci_free_consistent (int ,int,int ,int ) ;
 int rocker_write64 (struct rocker const*,int ,int ) ;

__attribute__((used)) static void rocker_dma_ring_destroy(const struct rocker *rocker,
        const struct rocker_dma_ring_info *info)
{
 rocker_write64(rocker, DMA_DESC_ADDR(info->type), 0);

 pci_free_consistent(rocker->pdev,
       info->size * sizeof(struct rocker_desc),
       info->desc, info->mapaddr);
 kfree(info->desc_info);
}
