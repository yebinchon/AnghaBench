
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxge_ring {int napi; int rx_vector_no; scalar_t__ handle; } ;
struct __vxge_hw_channel {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int adaptive_coalesce_rx_interrupts (struct vxge_ring*) ;
 int napi_schedule (int *) ;
 int vxge_hw_channel_msix_clear (struct __vxge_hw_channel*,int ) ;
 int vxge_hw_channel_msix_mask (struct __vxge_hw_channel*,int ) ;

__attribute__((used)) static irqreturn_t vxge_rx_msix_napi_handle(int irq, void *dev_id)
{
 struct vxge_ring *ring = (struct vxge_ring *)dev_id;

 adaptive_coalesce_rx_interrupts(ring);

 vxge_hw_channel_msix_mask((struct __vxge_hw_channel *)ring->handle,
      ring->rx_vector_no);

 vxge_hw_channel_msix_clear((struct __vxge_hw_channel *)ring->handle,
       ring->rx_vector_no);

 napi_schedule(&ring->napi);
 return IRQ_HANDLED;
}
