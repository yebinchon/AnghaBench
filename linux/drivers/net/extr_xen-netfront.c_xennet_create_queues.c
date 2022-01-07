
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netfront_queue {unsigned int id; int napi; struct netfront_info* info; } ;
struct netfront_info {TYPE_1__* xbdev; int netdev; struct netfront_queue* queues; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*,unsigned int) ;
 struct netfront_queue* kcalloc (unsigned int,int,int ) ;
 int napi_enable (int *) ;
 int netif_napi_add (int ,int *,int ,int) ;
 scalar_t__ netif_running (int ) ;
 int netif_set_real_num_tx_queues (int ,unsigned int) ;
 int xennet_init_queue (struct netfront_queue*) ;
 int xennet_poll ;

__attribute__((used)) static int xennet_create_queues(struct netfront_info *info,
    unsigned int *num_queues)
{
 unsigned int i;
 int ret;

 info->queues = kcalloc(*num_queues, sizeof(struct netfront_queue),
          GFP_KERNEL);
 if (!info->queues)
  return -ENOMEM;

 for (i = 0; i < *num_queues; i++) {
  struct netfront_queue *queue = &info->queues[i];

  queue->id = i;
  queue->info = info;

  ret = xennet_init_queue(queue);
  if (ret < 0) {
   dev_warn(&info->xbdev->dev,
     "only created %d queues\n", i);
   *num_queues = i;
   break;
  }

  netif_napi_add(queue->info->netdev, &queue->napi,
          xennet_poll, 64);
  if (netif_running(info->netdev))
   napi_enable(&queue->napi);
 }

 netif_set_real_num_tx_queues(info->netdev, *num_queues);

 if (*num_queues == 0) {
  dev_err(&info->xbdev->dev, "no queues\n");
  return -EINVAL;
 }
 return 0;
}
