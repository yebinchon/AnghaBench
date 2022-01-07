
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int hard_header_len; int mtu; } ;
struct lan78xx_net {int hard_mtu; int rx_urb_size; int maxpacket; int bh; int rxq; int net; } ;


 int EDOM ;
 scalar_t__ VLAN_ETH_HLEN ;
 int lan78xx_set_rx_max_frame_length (struct lan78xx_net*,scalar_t__) ;
 struct lan78xx_net* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (int ) ;
 int tasklet_schedule (int *) ;
 int unlink_urbs (struct lan78xx_net*,int *) ;

__attribute__((used)) static int lan78xx_change_mtu(struct net_device *netdev, int new_mtu)
{
 struct lan78xx_net *dev = netdev_priv(netdev);
 int ll_mtu = new_mtu + netdev->hard_header_len;
 int old_hard_mtu = dev->hard_mtu;
 int old_rx_urb_size = dev->rx_urb_size;
 int ret;


 if ((ll_mtu % dev->maxpacket) == 0)
  return -EDOM;

 ret = lan78xx_set_rx_max_frame_length(dev, new_mtu + VLAN_ETH_HLEN);

 netdev->mtu = new_mtu;

 dev->hard_mtu = netdev->mtu + netdev->hard_header_len;
 if (dev->rx_urb_size == old_hard_mtu) {
  dev->rx_urb_size = dev->hard_mtu;
  if (dev->rx_urb_size > old_rx_urb_size) {
   if (netif_running(dev->net)) {
    unlink_urbs(dev, &dev->rxq);
    tasklet_schedule(&dev->bh);
   }
  }
 }

 return 0;
}
