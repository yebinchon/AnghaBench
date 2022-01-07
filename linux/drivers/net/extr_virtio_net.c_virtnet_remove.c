
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtnet_info {int dev; int failover; int config_work; } ;
struct virtio_device {struct virtnet_info* priv; } ;


 int flush_work (int *) ;
 int free_netdev (int ) ;
 int net_failover_destroy (int ) ;
 int remove_vq_common (struct virtnet_info*) ;
 int unregister_netdev (int ) ;
 int virtnet_cpu_notif_remove (struct virtnet_info*) ;

__attribute__((used)) static void virtnet_remove(struct virtio_device *vdev)
{
 struct virtnet_info *vi = vdev->priv;

 virtnet_cpu_notif_remove(vi);


 flush_work(&vi->config_work);

 unregister_netdev(vi->dev);

 net_failover_destroy(vi->failover);

 remove_vq_common(vi);

 free_netdev(vi->dev);
}
