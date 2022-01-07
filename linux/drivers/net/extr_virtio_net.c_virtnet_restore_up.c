
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct virtnet_info {int curr_queue_pairs; int max_queue_pairs; int dev; TYPE_1__* sq; TYPE_2__* rq; int refill; } ;
struct virtio_device {struct virtnet_info* priv; } ;
struct TYPE_4__ {int napi; int vq; } ;
struct TYPE_3__ {int napi; int vq; } ;


 int GFP_KERNEL ;
 int init_vqs (struct virtnet_info*) ;
 int netif_device_attach (int ) ;
 scalar_t__ netif_running (int ) ;
 int netif_tx_lock_bh (int ) ;
 int netif_tx_unlock_bh (int ) ;
 int schedule_delayed_work (int *,int ) ;
 int try_fill_recv (struct virtnet_info*,TYPE_2__*,int ) ;
 int virtio_device_ready (struct virtio_device*) ;
 int virtnet_napi_enable (int ,int *) ;
 int virtnet_napi_tx_enable (struct virtnet_info*,int ,int *) ;

__attribute__((used)) static int virtnet_restore_up(struct virtio_device *vdev)
{
 struct virtnet_info *vi = vdev->priv;
 int err, i;

 err = init_vqs(vi);
 if (err)
  return err;

 virtio_device_ready(vdev);

 if (netif_running(vi->dev)) {
  for (i = 0; i < vi->curr_queue_pairs; i++)
   if (!try_fill_recv(vi, &vi->rq[i], GFP_KERNEL))
    schedule_delayed_work(&vi->refill, 0);

  for (i = 0; i < vi->max_queue_pairs; i++) {
   virtnet_napi_enable(vi->rq[i].vq, &vi->rq[i].napi);
   virtnet_napi_tx_enable(vi, vi->sq[i].vq,
            &vi->sq[i].napi);
  }
 }

 netif_tx_lock_bh(vi->dev);
 netif_device_attach(vi->dev);
 netif_tx_unlock_bh(vi->dev);
 return err;
}
