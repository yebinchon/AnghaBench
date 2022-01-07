
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ len; } ;
struct bnad_rx_unmap {TYPE_2__ vector; int * page; } ;
struct bnad {TYPE_1__* pcidev; } ;
struct TYPE_4__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int dma_addr ;
 int dma_unmap_addr (TYPE_2__*,int ) ;
 int dma_unmap_addr_set (TYPE_2__*,int ,int ) ;
 int dma_unmap_page (int *,int ,scalar_t__,int ) ;
 int put_page (int *) ;

__attribute__((used)) static inline void
bnad_rxq_cleanup_page(struct bnad *bnad, struct bnad_rx_unmap *unmap)
{
 if (!unmap->page)
  return;

 dma_unmap_page(&bnad->pcidev->dev,
   dma_unmap_addr(&unmap->vector, dma_addr),
   unmap->vector.len, DMA_FROM_DEVICE);
 put_page(unmap->page);
 unmap->page = ((void*)0);
 dma_unmap_addr_set(&unmap->vector, dma_addr, 0);
 unmap->vector.len = 0;
}
