
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mei_device {TYPE_1__* dr_dscr; } ;
struct hbm_dma_ring_ctrl {int dummy; } ;
struct TYPE_2__ {scalar_t__ vaddr; } ;


 size_t DMA_DSCR_CTRL ;

__attribute__((used)) static inline
struct hbm_dma_ring_ctrl *mei_dma_ring_ctrl(struct mei_device *dev)
{
 return (struct hbm_dma_ring_ctrl *)dev->dr_dscr[DMA_DSCR_CTRL].vaddr;
}
