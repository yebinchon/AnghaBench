
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mei_device {TYPE_1__* dr_dscr; } ;
struct TYPE_2__ {int vaddr; } ;


 size_t DMA_DSCR_HOST ;

bool mei_dma_ring_is_allocated(struct mei_device *dev)
{
 return !!dev->dr_dscr[DMA_DSCR_HOST].vaddr;
}
