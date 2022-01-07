
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hv_ring_buffer_info {scalar_t__ priv_read_index; } ;
struct vmbus_channel {struct hv_ring_buffer_info inbound; } ;
struct netvsc_channel {int napi; struct vmbus_channel* channel; } ;


 int __napi_schedule_irqoff (int *) ;
 int hv_begin_read (struct hv_ring_buffer_info*) ;
 scalar_t__ hv_get_ring_buffer (struct hv_ring_buffer_info*) ;
 scalar_t__ napi_schedule_prep (int *) ;
 int prefetch (scalar_t__) ;

void netvsc_channel_cb(void *context)
{
 struct netvsc_channel *nvchan = context;
 struct vmbus_channel *channel = nvchan->channel;
 struct hv_ring_buffer_info *rbi = &channel->inbound;


 prefetch(hv_get_ring_buffer(rbi) + rbi->priv_read_index);

 if (napi_schedule_prep(&nvchan->napi)) {

  hv_begin_read(rbi);

  __napi_schedule_irqoff(&nvchan->napi);
 }
}
