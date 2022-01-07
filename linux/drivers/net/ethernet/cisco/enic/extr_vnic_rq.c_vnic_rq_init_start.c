
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {unsigned int desc_count; scalar_t__ base_addr; } ;
struct vnic_rq {int ** bufs; int * to_clean; int * to_use; TYPE_2__* ctrl; TYPE_1__ ring; } ;
struct TYPE_4__ {int posted_index; int fetch_index; int error_status; int dropped_packet_count; int error_interrupt_offset; int error_interrupt_enable; int cq_index; int ring_size; int ring_base; } ;


 int VNIC_PADDR_TARGET ;
 unsigned int VNIC_RQ_BUF_BLK_ENTRIES (unsigned int) ;
 int iowrite32 (unsigned int,int *) ;
 int writeq (int,int *) ;

__attribute__((used)) static void vnic_rq_init_start(struct vnic_rq *rq, unsigned int cq_index,
 unsigned int fetch_index, unsigned int posted_index,
 unsigned int error_interrupt_enable,
 unsigned int error_interrupt_offset)
{
 u64 paddr;
 unsigned int count = rq->ring.desc_count;

 paddr = (u64)rq->ring.base_addr | VNIC_PADDR_TARGET;
 writeq(paddr, &rq->ctrl->ring_base);
 iowrite32(count, &rq->ctrl->ring_size);
 iowrite32(cq_index, &rq->ctrl->cq_index);
 iowrite32(error_interrupt_enable, &rq->ctrl->error_interrupt_enable);
 iowrite32(error_interrupt_offset, &rq->ctrl->error_interrupt_offset);
 iowrite32(0, &rq->ctrl->dropped_packet_count);
 iowrite32(0, &rq->ctrl->error_status);
 iowrite32(fetch_index, &rq->ctrl->fetch_index);
 iowrite32(posted_index, &rq->ctrl->posted_index);

 rq->to_use = rq->to_clean =
  &rq->bufs[fetch_index / VNIC_RQ_BUF_BLK_ENTRIES(count)]
   [fetch_index % VNIC_RQ_BUF_BLK_ENTRIES(count)];
}
