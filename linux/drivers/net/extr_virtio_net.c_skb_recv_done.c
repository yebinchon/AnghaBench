
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtqueue {TYPE_1__* vdev; } ;
struct virtnet_info {struct receive_queue* rq; } ;
struct receive_queue {int napi; } ;
struct TYPE_2__ {struct virtnet_info* priv; } ;


 int virtqueue_napi_schedule (int *,struct virtqueue*) ;
 size_t vq2rxq (struct virtqueue*) ;

__attribute__((used)) static void skb_recv_done(struct virtqueue *rvq)
{
 struct virtnet_info *vi = rvq->vdev->priv;
 struct receive_queue *rq = &vi->rq[vq2rxq(rvq)];

 virtqueue_napi_schedule(&rq->napi, rvq);
}
