
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtnet_info {int config_work; } ;
struct virtio_device {struct virtnet_info* priv; } ;


 int schedule_work (int *) ;

__attribute__((used)) static void virtnet_config_changed(struct virtio_device *vdev)
{
 struct virtnet_info *vi = vdev->priv;

 schedule_work(&vi->config_work);
}
