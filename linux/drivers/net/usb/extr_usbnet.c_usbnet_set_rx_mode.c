
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;
struct net_device {int dummy; } ;


 int EVENT_SET_RX_MODE ;
 struct usbnet* netdev_priv (struct net_device*) ;
 int usbnet_defer_kevent (struct usbnet*,int ) ;

__attribute__((used)) static void usbnet_set_rx_mode(struct net_device *net)
{
 struct usbnet *dev = netdev_priv(net);

 usbnet_defer_kevent(dev, EVENT_SET_RX_MODE);
}
