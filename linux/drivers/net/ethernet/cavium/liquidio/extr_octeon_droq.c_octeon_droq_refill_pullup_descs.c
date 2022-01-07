
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct octeon_droq_desc {scalar_t__ buffer_ptr; } ;
struct octeon_droq {size_t refill_idx; size_t read_idx; int max_count; int refill_count; TYPE_1__* recv_buf_list; } ;
struct TYPE_2__ {int * buffer; int data; } ;


 void* incr_index (size_t,int,int ) ;

__attribute__((used)) static inline u32
octeon_droq_refill_pullup_descs(struct octeon_droq *droq,
    struct octeon_droq_desc *desc_ring)
{
 u32 desc_refilled = 0;

 u32 refill_index = droq->refill_idx;

 while (refill_index != droq->read_idx) {
  if (droq->recv_buf_list[refill_index].buffer) {
   droq->recv_buf_list[droq->refill_idx].buffer =
    droq->recv_buf_list[refill_index].buffer;
   droq->recv_buf_list[droq->refill_idx].data =
    droq->recv_buf_list[refill_index].data;
   desc_ring[droq->refill_idx].buffer_ptr =
    desc_ring[refill_index].buffer_ptr;
   droq->recv_buf_list[refill_index].buffer = ((void*)0);
   desc_ring[refill_index].buffer_ptr = 0;
   do {
    droq->refill_idx = incr_index(droq->refill_idx,
             1,
             droq->max_count);
    desc_refilled++;
    droq->refill_count--;
   } while (droq->recv_buf_list[droq->refill_idx].buffer);
  }
  refill_index = incr_index(refill_index, 1, droq->max_count);
 }
 return desc_refilled;
}
