
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtnet_info {int vdev; } ;
struct net_device {int dummy; } ;


 int EOPNOTSUPP ;
 int VIRTIO_NET_F_STANDBY ;
 struct virtnet_info* netdev_priv (struct net_device*) ;
 int snprintf (char*,size_t,char*) ;
 int virtio_has_feature (int ,int ) ;

__attribute__((used)) static int virtnet_get_phys_port_name(struct net_device *dev, char *buf,
          size_t len)
{
 struct virtnet_info *vi = netdev_priv(dev);
 int ret;

 if (!virtio_has_feature(vi->vdev, VIRTIO_NET_F_STANDBY))
  return -EOPNOTSUPP;

 ret = snprintf(buf, len, "sby");
 if (ret >= len)
  return -EOPNOTSUPP;

 return 0;
}
