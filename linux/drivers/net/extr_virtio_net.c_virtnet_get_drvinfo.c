
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtnet_info {struct virtio_device* vdev; } ;
struct virtio_device {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;


 int KBUILD_MODNAME ;
 int VIRTNET_DRIVER_VERSION ;
 struct virtnet_info* netdev_priv (struct net_device*) ;
 int strlcpy (int ,int ,int) ;
 int virtio_bus_name (struct virtio_device*) ;

__attribute__((used)) static void virtnet_get_drvinfo(struct net_device *dev,
    struct ethtool_drvinfo *info)
{
 struct virtnet_info *vi = netdev_priv(dev);
 struct virtio_device *vdev = vi->vdev;

 strlcpy(info->driver, KBUILD_MODNAME, sizeof(info->driver));
 strlcpy(info->version, VIRTNET_DRIVER_VERSION, sizeof(info->version));
 strlcpy(info->bus_info, virtio_bus_name(vdev), sizeof(info->bus_info));

}
