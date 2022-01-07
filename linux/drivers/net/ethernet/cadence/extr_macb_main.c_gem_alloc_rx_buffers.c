
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct macb_queue {int rx_skbuff; } ;
struct macb {unsigned int num_queues; int rx_ring_size; int dev; struct macb_queue* queues; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kzalloc (int,int ) ;
 int netdev_dbg (int ,char*,int,int ) ;

__attribute__((used)) static int gem_alloc_rx_buffers(struct macb *bp)
{
 struct macb_queue *queue;
 unsigned int q;
 int size;

 for (q = 0, queue = bp->queues; q < bp->num_queues; ++q, ++queue) {
  size = bp->rx_ring_size * sizeof(struct sk_buff *);
  queue->rx_skbuff = kzalloc(size, GFP_KERNEL);
  if (!queue->rx_skbuff)
   return -ENOMEM;
  else
   netdev_dbg(bp->dev,
       "Allocated %d RX struct sk_buff entries at %p\n",
       bp->rx_ring_size, queue->rx_skbuff);
 }
 return 0;
}
