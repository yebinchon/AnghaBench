
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mei_device {TYPE_1__* dr_dscr; } ;
struct TYPE_2__ {int size; } ;


 size_t DMA_DSCR_HOST ;

__attribute__((used)) static inline u32 mei_dma_ring_hbuf_depth(struct mei_device *dev)
{
 return dev->dr_dscr[DMA_DSCR_HOST].size >> 2;
}
