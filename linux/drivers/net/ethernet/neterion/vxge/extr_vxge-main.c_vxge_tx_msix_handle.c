
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxge_fifo {int tx_vector_no; scalar_t__ handle; } ;
struct __vxge_hw_channel {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int VXGE_COMPLETE_VPATH_TX (struct vxge_fifo*) ;
 int adaptive_coalesce_tx_interrupts (struct vxge_fifo*) ;
 int vxge_hw_channel_msix_clear (struct __vxge_hw_channel*,int ) ;
 int vxge_hw_channel_msix_mask (struct __vxge_hw_channel*,int ) ;
 int vxge_hw_channel_msix_unmask (struct __vxge_hw_channel*,int ) ;

__attribute__((used)) static irqreturn_t vxge_tx_msix_handle(int irq, void *dev_id)
{
 struct vxge_fifo *fifo = (struct vxge_fifo *)dev_id;

 adaptive_coalesce_tx_interrupts(fifo);

 vxge_hw_channel_msix_mask((struct __vxge_hw_channel *)fifo->handle,
      fifo->tx_vector_no);

 vxge_hw_channel_msix_clear((struct __vxge_hw_channel *)fifo->handle,
       fifo->tx_vector_no);

 VXGE_COMPLETE_VPATH_TX(fifo);

 vxge_hw_channel_msix_unmask((struct __vxge_hw_channel *)fifo->handle,
        fifo->tx_vector_no);

 return IRQ_HANDLED;
}
