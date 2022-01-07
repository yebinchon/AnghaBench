
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t frame_max; int count_max; int head; } ;
union ep_buffer_info {TYPE_1__ v1i; } ;
struct esmem_frame {void* frame_data; scalar_t__ frame_size; } ;
struct epbuf_handler {int * ring; union ep_buffer_info* info; } ;


 size_t EP_RING_INDEX (int ,int ) ;

void *fjes_hw_epbuf_rx_curpkt_get_addr(struct epbuf_handler *epbh,
           size_t *psize)
{
 union ep_buffer_info *info = epbh->info;
 struct esmem_frame *ring_frame;
 void *frame;

 ring_frame = (struct esmem_frame *)&(epbh->ring[EP_RING_INDEX
          (info->v1i.head,
           info->v1i.count_max) *
          info->v1i.frame_max]);

 *psize = (size_t)ring_frame->frame_size;

 frame = ring_frame->frame_data;

 return frame;
}
