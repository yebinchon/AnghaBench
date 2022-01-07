
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct octeon_skb_page_info {scalar_t__ page; } ;
struct octeon_droq_desc {int buffer_ptr; } ;
struct TYPE_3__ {int rx_alloc_failure; } ;
struct octeon_droq {scalar_t__ max_count; size_t refill_idx; scalar_t__ refill_count; TYPE_2__* recv_buf_list; TYPE_1__ stats; struct octeon_droq_desc* desc_ring; } ;
struct octeon_device {int dummy; } ;
struct TYPE_4__ {void* buffer; int * data; struct octeon_skb_page_info pg_info; } ;


 int * get_rbd (void*) ;
 size_t incr_index (size_t,int,scalar_t__) ;
 int lio_map_ring (void*) ;
 scalar_t__ octeon_droq_refill_pullup_descs (struct octeon_droq*,struct octeon_droq_desc*) ;
 void* recv_buffer_alloc (struct octeon_device*,struct octeon_skb_page_info*) ;
 void* recv_buffer_reuse (struct octeon_device*,struct octeon_skb_page_info*) ;

__attribute__((used)) static u32
octeon_droq_refill(struct octeon_device *octeon_dev, struct octeon_droq *droq)
{
 struct octeon_droq_desc *desc_ring;
 void *buf = ((void*)0);
 u8 *data;
 u32 desc_refilled = 0;
 struct octeon_skb_page_info *pg_info;

 desc_ring = droq->desc_ring;

 while (droq->refill_count && (desc_refilled < droq->max_count)) {



  if (!droq->recv_buf_list[droq->refill_idx].buffer) {
   pg_info =
    &droq->recv_buf_list[droq->refill_idx].pg_info;



   if (pg_info->page)
    buf = recv_buffer_reuse(octeon_dev, pg_info);
   else
    buf = recv_buffer_alloc(octeon_dev, pg_info);



   if (!buf) {
    droq->stats.rx_alloc_failure++;
    break;
   }
   droq->recv_buf_list[droq->refill_idx].buffer =
    buf;
   data = get_rbd(buf);
  } else {
   data = get_rbd(droq->recv_buf_list
           [droq->refill_idx].buffer);
  }

  droq->recv_buf_list[droq->refill_idx].data = data;

  desc_ring[droq->refill_idx].buffer_ptr =
   lio_map_ring(droq->recv_buf_list[
         droq->refill_idx].buffer);

  droq->refill_idx = incr_index(droq->refill_idx, 1,
           droq->max_count);
  desc_refilled++;
  droq->refill_count--;
 }

 if (droq->refill_count)
  desc_refilled +=
   octeon_droq_refill_pullup_descs(droq, desc_ring);






 return desc_refilled;
}
