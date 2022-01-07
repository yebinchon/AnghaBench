
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfront_queue {int napi; } ;
struct netfront_info {struct netfront_queue* queues; int netdev; } ;
struct net_device {unsigned int real_num_tx_queues; } ;


 int napi_disable (int *) ;
 struct netfront_info* netdev_priv (struct net_device*) ;
 int netif_tx_stop_all_queues (int ) ;

__attribute__((used)) static int xennet_close(struct net_device *dev)
{
 struct netfront_info *np = netdev_priv(dev);
 unsigned int num_queues = dev->real_num_tx_queues;
 unsigned int i;
 struct netfront_queue *queue;
 netif_tx_stop_all_queues(np->netdev);
 for (i = 0; i < num_queues; ++i) {
  queue = &np->queues[i];
  napi_disable(&queue->napi);
 }
 return 0;
}
