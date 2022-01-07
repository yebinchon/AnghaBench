
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netfront_queue {int napi; } ;
struct netfront_info {struct netfront_queue* queues; TYPE_1__* netdev; } ;
struct TYPE_2__ {unsigned int real_num_tx_queues; } ;


 int kfree (struct netfront_queue*) ;
 int napi_disable (int *) ;
 int netif_napi_del (int *) ;
 scalar_t__ netif_running (TYPE_1__*) ;

__attribute__((used)) static void xennet_destroy_queues(struct netfront_info *info)
{
 unsigned int i;

 for (i = 0; i < info->netdev->real_num_tx_queues; i++) {
  struct netfront_queue *queue = &info->queues[i];

  if (netif_running(info->netdev))
   napi_disable(&queue->napi);
  netif_napi_del(&queue->napi);
 }

 kfree(info->queues);
 info->queues = ((void*)0);
}
