
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vringh {int dummy; } ;
struct virtio_device {struct cfv_info* priv; } ;
struct TYPE_2__ {int rx_kicks; } ;
struct cfv_info {int napi; int vr_rx; TYPE_1__ stats; } ;


 int napi_schedule (int *) ;
 int vringh_notify_disable_kern (int ) ;

__attribute__((used)) static void cfv_recv(struct virtio_device *vdev, struct vringh *vr_rx)
{
 struct cfv_info *cfv = vdev->priv;

 ++cfv->stats.rx_kicks;
 vringh_notify_disable_kern(cfv->vr_rx);
 napi_schedule(&cfv->napi);
}
