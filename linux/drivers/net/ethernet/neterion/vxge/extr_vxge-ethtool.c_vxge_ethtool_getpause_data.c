
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxgedev {struct __vxge_hw_device* devh; } ;
struct net_device {int dummy; } ;
struct ethtool_pauseparam {int rx_pause; int tx_pause; } ;
struct __vxge_hw_device {int dummy; } ;


 struct vxgedev* netdev_priv (struct net_device*) ;
 int vxge_hw_device_getpause_data (struct __vxge_hw_device*,int ,int *,int *) ;

__attribute__((used)) static void vxge_ethtool_getpause_data(struct net_device *dev,
           struct ethtool_pauseparam *ep)
{
 struct vxgedev *vdev = netdev_priv(dev);
 struct __vxge_hw_device *hldev = vdev->devh;

 vxge_hw_device_getpause_data(hldev, 0, &ep->tx_pause, &ep->rx_pause);
}
