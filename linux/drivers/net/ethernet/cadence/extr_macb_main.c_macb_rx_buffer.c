
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct macb_queue {void* rx_buffers; TYPE_1__* bp; } ;
struct TYPE_2__ {int rx_buffer_size; } ;


 int macb_rx_ring_wrap (TYPE_1__*,unsigned int) ;

__attribute__((used)) static void *macb_rx_buffer(struct macb_queue *queue, unsigned int index)
{
 return queue->rx_buffers + queue->bp->rx_buffer_size *
        macb_rx_ring_wrap(queue->bp, index);
}
