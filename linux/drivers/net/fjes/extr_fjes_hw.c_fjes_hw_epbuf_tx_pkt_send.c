
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t frame_max; int count_max; scalar_t__ tail; int head; } ;
union ep_buffer_info {TYPE_1__ v1i; } ;
struct esmem_frame {size_t frame_size; scalar_t__ frame_data; } ;
struct epbuf_handler {union ep_buffer_info* info; int * ring; } ;


 int ENOBUFS ;
 scalar_t__ EP_RING_FULL (int ,scalar_t__,int ) ;
 size_t EP_RING_INDEX (scalar_t__,int ) ;
 int EP_RING_INDEX_INC (scalar_t__,int ) ;
 int memcpy (void*,void*,size_t) ;

int fjes_hw_epbuf_tx_pkt_send(struct epbuf_handler *epbh,
         void *frame, size_t size)
{
 union ep_buffer_info *info = epbh->info;
 struct esmem_frame *ring_frame;

 if (EP_RING_FULL(info->v1i.head, info->v1i.tail, info->v1i.count_max))
  return -ENOBUFS;

 ring_frame = (struct esmem_frame *)&(epbh->ring[EP_RING_INDEX
          (info->v1i.tail - 1,
           info->v1i.count_max) *
          info->v1i.frame_max]);

 ring_frame->frame_size = size;
 memcpy((void *)(ring_frame->frame_data), (void *)frame, size);

 EP_RING_INDEX_INC(epbh->info->v1i.tail, info->v1i.count_max);

 return 0;
}
