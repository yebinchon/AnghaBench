
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device_stats {int rx_bytes; int rx_packets; int rx_dropped; int rx_errors; int rx_over_errors; } ;
struct net_device {struct net_device_stats stats; } ;
struct can_frame {scalar_t__ can_dlc; int * data; int can_id; } ;


 int CAN_ERR_CRTL ;
 int CAN_ERR_CRTL_RX_OVERFLOW ;
 int ENOMEM ;
 struct sk_buff* alloc_can_err_skb (struct net_device*,struct can_frame**) ;
 int netdev_warn (struct net_device*,char*) ;
 int netif_rx (struct sk_buff*) ;

int kvaser_usb_can_rx_over_error(struct net_device *netdev)
{
 struct net_device_stats *stats = &netdev->stats;
 struct can_frame *cf;
 struct sk_buff *skb;

 stats->rx_over_errors++;
 stats->rx_errors++;

 skb = alloc_can_err_skb(netdev, &cf);
 if (!skb) {
  stats->rx_dropped++;
  netdev_warn(netdev, "No memory left for err_skb\n");
  return -ENOMEM;
 }

 cf->can_id |= CAN_ERR_CRTL;
 cf->data[1] = CAN_ERR_CRTL_RX_OVERFLOW;

 stats->rx_packets++;
 stats->rx_bytes += cf->can_dlc;
 netif_rx(skb);

 return 0;
}
