
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netfront_queue {int id; TYPE_1__* info; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct net_device* netdev; } ;


 scalar_t__ likely (int ) ;
 struct netdev_queue* netdev_get_tx_queue (struct net_device*,int ) ;
 scalar_t__ netfront_tx_slot_available (struct netfront_queue*) ;
 int netif_running (struct net_device*) ;
 int netif_tx_queue_stopped (struct netdev_queue*) ;
 int netif_tx_wake_queue (struct netdev_queue*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void xennet_maybe_wake_tx(struct netfront_queue *queue)
{
 struct net_device *dev = queue->info->netdev;
 struct netdev_queue *dev_queue = netdev_get_tx_queue(dev, queue->id);

 if (unlikely(netif_tx_queue_stopped(dev_queue)) &&
     netfront_tx_slot_available(queue) &&
     likely(netif_running(dev)))
  netif_tx_wake_queue(netdev_get_tx_queue(dev, queue->id));
}
