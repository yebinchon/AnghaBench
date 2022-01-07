
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct vnic_rq_buf {unsigned int os_buf_index; unsigned int len; int index; struct vnic_rq_buf* next; int wr_id; int dma_addr; void* os_buf; } ;
struct TYPE_3__ {int desc_avail; } ;
struct vnic_rq {TYPE_2__* ctrl; TYPE_1__ ring; struct vnic_rq_buf* to_use; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int posted_index; } ;


 int VNIC_RQ_RETURN_RATE ;
 int iowrite32 (int,int *) ;
 int wmb () ;

__attribute__((used)) static inline void vnic_rq_post(struct vnic_rq *rq,
 void *os_buf, unsigned int os_buf_index,
 dma_addr_t dma_addr, unsigned int len,
 uint64_t wrid)
{
 struct vnic_rq_buf *buf = rq->to_use;

 buf->os_buf = os_buf;
 buf->os_buf_index = os_buf_index;
 buf->dma_addr = dma_addr;
 buf->len = len;
 buf->wr_id = wrid;

 buf = buf->next;
 rq->to_use = buf;
 rq->ring.desc_avail--;
 if ((buf->index & 0xf) == 0) {





  wmb();
  iowrite32(buf->index, &rq->ctrl->posted_index);
 }
}
