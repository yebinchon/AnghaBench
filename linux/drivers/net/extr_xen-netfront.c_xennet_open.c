
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rsp_cons; TYPE_1__* sring; } ;
struct netfront_queue {int rx_lock; int napi; TYPE_2__ rx; } ;
struct netfront_info {struct netfront_queue* queues; } ;
struct net_device {unsigned int real_num_tx_queues; } ;
struct TYPE_3__ {scalar_t__ rsp_event; } ;


 int ENODEV ;
 scalar_t__ RING_HAS_UNCONSUMED_RESPONSES (TYPE_2__*) ;
 int napi_enable (int *) ;
 int napi_schedule (int *) ;
 struct netfront_info* netdev_priv (struct net_device*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 int netif_tx_start_all_queues (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int xennet_alloc_rx_buffers (struct netfront_queue*) ;

__attribute__((used)) static int xennet_open(struct net_device *dev)
{
 struct netfront_info *np = netdev_priv(dev);
 unsigned int num_queues = dev->real_num_tx_queues;
 unsigned int i = 0;
 struct netfront_queue *queue = ((void*)0);

 if (!np->queues)
  return -ENODEV;

 for (i = 0; i < num_queues; ++i) {
  queue = &np->queues[i];
  napi_enable(&queue->napi);

  spin_lock_bh(&queue->rx_lock);
  if (netif_carrier_ok(dev)) {
   xennet_alloc_rx_buffers(queue);
   queue->rx.sring->rsp_event = queue->rx.rsp_cons + 1;
   if (RING_HAS_UNCONSUMED_RESPONSES(&queue->rx))
    napi_schedule(&queue->napi);
  }
  spin_unlock_bh(&queue->rx_lock);
 }

 netif_tx_start_all_queues(dev);

 return 0;
}
