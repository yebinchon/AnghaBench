
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vxge_hw_ring_rxd_1 {int control_1; int buffer0_ptr; } ;
typedef int dma_addr_t ;


 int VXGE_HW_RING_RXD_1_BUFFER0_SIZE (int ) ;
 int VXGE_HW_RING_RXD_1_BUFFER0_SIZE_MASK ;

__attribute__((used)) static inline
void vxge_hw_ring_rxd_1b_set(
 void *rxdh,
 dma_addr_t dma_pointer,
 u32 size)
{
 struct vxge_hw_ring_rxd_1 *rxdp = (struct vxge_hw_ring_rxd_1 *)rxdh;
 rxdp->buffer0_ptr = dma_pointer;
 rxdp->control_1 &= ~VXGE_HW_RING_RXD_1_BUFFER0_SIZE_MASK;
 rxdp->control_1 |= VXGE_HW_RING_RXD_1_BUFFER0_SIZE(size);
}
