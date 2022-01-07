
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtnet_info {struct virtio_device* vdev; } ;
struct virtio_device {TYPE_1__* config; } ;
struct TYPE_2__ {int (* del_vqs ) (struct virtio_device*) ;} ;


 int stub1 (struct virtio_device*) ;
 int virtnet_clean_affinity (struct virtnet_info*) ;
 int virtnet_free_queues (struct virtnet_info*) ;

__attribute__((used)) static void virtnet_del_vqs(struct virtnet_info *vi)
{
 struct virtio_device *vdev = vi->vdev;

 virtnet_clean_affinity(vi);

 vdev->config->del_vqs(vdev);

 virtnet_free_queues(vi);
}
