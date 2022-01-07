
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtnet_info {int max_queue_pairs; TYPE_1__* ctrl; TYPE_1__* sq; TYPE_1__* rq; } ;
struct TYPE_2__ {int napi; } ;


 int kfree (TYPE_1__*) ;
 int napi_hash_del (int *) ;
 int netif_napi_del (int *) ;
 int synchronize_net () ;

__attribute__((used)) static void virtnet_free_queues(struct virtnet_info *vi)
{
 int i;

 for (i = 0; i < vi->max_queue_pairs; i++) {
  napi_hash_del(&vi->rq[i].napi);
  netif_napi_del(&vi->rq[i].napi);
  netif_napi_del(&vi->sq[i].napi);
 }




 synchronize_net();

 kfree(vi->rq);
 kfree(vi->sq);
 kfree(vi->ctrl);
}
