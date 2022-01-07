
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {unsigned int desc_count; scalar_t__ base_addr; } ;
struct vnic_wq {int ** bufs; int * to_clean; int * to_use; TYPE_2__* ctrl; TYPE_1__ ring; } ;
struct TYPE_4__ {int error_status; int error_interrupt_offset; int error_interrupt_enable; int cq_index; int posted_index; int fetch_index; int ring_size; int ring_base; } ;


 int VNIC_PADDR_TARGET ;
 unsigned int VNIC_WQ_BUF_BLK_ENTRIES (unsigned int) ;
 int iowrite32 (unsigned int,int *) ;
 int writeq (int,int *) ;

void enic_wq_init_start(struct vnic_wq *wq, unsigned int cq_index,
   unsigned int fetch_index, unsigned int posted_index,
   unsigned int error_interrupt_enable,
   unsigned int error_interrupt_offset)
{
 u64 paddr;
 unsigned int count = wq->ring.desc_count;

 paddr = (u64)wq->ring.base_addr | VNIC_PADDR_TARGET;
 writeq(paddr, &wq->ctrl->ring_base);
 iowrite32(count, &wq->ctrl->ring_size);
 iowrite32(fetch_index, &wq->ctrl->fetch_index);
 iowrite32(posted_index, &wq->ctrl->posted_index);
 iowrite32(cq_index, &wq->ctrl->cq_index);
 iowrite32(error_interrupt_enable, &wq->ctrl->error_interrupt_enable);
 iowrite32(error_interrupt_offset, &wq->ctrl->error_interrupt_offset);
 iowrite32(0, &wq->ctrl->error_status);

 wq->to_use = wq->to_clean =
  &wq->bufs[fetch_index / VNIC_WQ_BUF_BLK_ENTRIES(count)]
   [fetch_index % VNIC_WQ_BUF_BLK_ENTRIES(count)];
}
