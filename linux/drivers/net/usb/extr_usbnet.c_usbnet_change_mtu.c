
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int hard_mtu; int rx_urb_size; int maxpacket; } ;
struct net_device {int hard_header_len; int mtu; } ;


 int EDOM ;
 struct usbnet* netdev_priv (struct net_device*) ;
 int usbnet_pause_rx (struct usbnet*) ;
 int usbnet_resume_rx (struct usbnet*) ;
 int usbnet_unlink_rx_urbs (struct usbnet*) ;
 int usbnet_update_max_qlen (struct usbnet*) ;

int usbnet_change_mtu (struct net_device *net, int new_mtu)
{
 struct usbnet *dev = netdev_priv(net);
 int ll_mtu = new_mtu + net->hard_header_len;
 int old_hard_mtu = dev->hard_mtu;
 int old_rx_urb_size = dev->rx_urb_size;


 if ((ll_mtu % dev->maxpacket) == 0)
  return -EDOM;
 net->mtu = new_mtu;

 dev->hard_mtu = net->mtu + net->hard_header_len;
 if (dev->rx_urb_size == old_hard_mtu) {
  dev->rx_urb_size = dev->hard_mtu;
  if (dev->rx_urb_size > old_rx_urb_size) {
   usbnet_pause_rx(dev);
   usbnet_unlink_rx_urbs(dev);
   usbnet_resume_rx(dev);
  }
 }


 usbnet_update_max_qlen(dev);

 return 0;
}
