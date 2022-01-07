
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct virtqueue {TYPE_1__* vdev; } ;
struct virtnet_info {int dev; TYPE_2__* sq; } ;
struct napi_struct {scalar_t__ weight; } ;
struct TYPE_4__ {struct napi_struct napi; } ;
struct TYPE_3__ {struct virtnet_info* priv; } ;


 int netif_wake_subqueue (int ,size_t) ;
 int virtqueue_disable_cb (struct virtqueue*) ;
 int virtqueue_napi_schedule (struct napi_struct*,struct virtqueue*) ;
 size_t vq2txq (struct virtqueue*) ;

__attribute__((used)) static void skb_xmit_done(struct virtqueue *vq)
{
 struct virtnet_info *vi = vq->vdev->priv;
 struct napi_struct *napi = &vi->sq[vq2txq(vq)].napi;


 virtqueue_disable_cb(vq);

 if (napi->weight)
  virtqueue_napi_schedule(napi, vq);
 else

  netif_wake_subqueue(vi->dev, vq2txq(vq));
}
