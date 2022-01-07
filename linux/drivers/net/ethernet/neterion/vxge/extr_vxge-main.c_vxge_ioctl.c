
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxgedev {int dummy; } ;
struct net_device {int dummy; } ;
struct ifreq {int ifr_data; } ;


 int EOPNOTSUPP ;


 struct vxgedev* netdev_priv (struct net_device*) ;
 int vxge_hwtstamp_get (struct vxgedev*,int ) ;
 int vxge_hwtstamp_set (struct vxgedev*,int ) ;

__attribute__((used)) static int vxge_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct vxgedev *vdev = netdev_priv(dev);

 switch (cmd) {
 case 128:
  return vxge_hwtstamp_set(vdev, rq->ifr_data);
 case 129:
  return vxge_hwtstamp_get(vdev, rq->ifr_data);
 default:
  return -EOPNOTSUPP;
 }
}
