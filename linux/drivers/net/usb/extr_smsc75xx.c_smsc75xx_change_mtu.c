
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int net; } ;
struct net_device {int dummy; } ;


 scalar_t__ ETH_HLEN ;
 struct usbnet* netdev_priv (struct net_device*) ;
 int netdev_warn (int ,char*) ;
 int smsc75xx_set_rx_max_frame_length (struct usbnet*,scalar_t__) ;
 int usbnet_change_mtu (struct net_device*,int) ;

__attribute__((used)) static int smsc75xx_change_mtu(struct net_device *netdev, int new_mtu)
{
 struct usbnet *dev = netdev_priv(netdev);
 int ret;

 ret = smsc75xx_set_rx_max_frame_length(dev, new_mtu + ETH_HLEN);
 if (ret < 0) {
  netdev_warn(dev->net, "Failed to set mac rx frame length\n");
  return ret;
 }

 return usbnet_change_mtu(netdev, new_mtu);
}
