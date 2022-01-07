
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct virtnet_info {int max_queue_pairs; TYPE_2__* sq; TYPE_1__* rq; int dev; int refill; int config_work; } ;
struct virtio_device {struct virtnet_info* priv; } ;
struct TYPE_4__ {int napi; } ;
struct TYPE_3__ {int napi; } ;


 int cancel_delayed_work_sync (int *) ;
 int flush_work (int *) ;
 int napi_disable (int *) ;
 int netif_device_detach (int ) ;
 scalar_t__ netif_running (int ) ;
 int netif_tx_lock_bh (int ) ;
 int netif_tx_unlock_bh (int ) ;
 int virtnet_napi_tx_disable (int *) ;

__attribute__((used)) static void virtnet_freeze_down(struct virtio_device *vdev)
{
 struct virtnet_info *vi = vdev->priv;
 int i;


 flush_work(&vi->config_work);

 netif_tx_lock_bh(vi->dev);
 netif_device_detach(vi->dev);
 netif_tx_unlock_bh(vi->dev);
 cancel_delayed_work_sync(&vi->refill);

 if (netif_running(vi->dev)) {
  for (i = 0; i < vi->max_queue_pairs; i++) {
   napi_disable(&vi->rq[i].napi);
   virtnet_napi_tx_disable(&vi->sq[i].napi);
  }
 }
}
