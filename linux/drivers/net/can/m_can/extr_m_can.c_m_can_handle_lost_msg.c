
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device_stats {int rx_over_errors; int rx_errors; } ;
struct net_device {struct net_device_stats stats; } ;
struct can_frame {int * data; int can_id; } ;


 int CAN_ERR_CRTL ;
 int CAN_ERR_CRTL_RX_OVERFLOW ;
 struct sk_buff* alloc_can_err_skb (struct net_device*,struct can_frame**) ;
 int netdev_err (struct net_device*,char*) ;
 int netif_receive_skb (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int m_can_handle_lost_msg(struct net_device *dev)
{
 struct net_device_stats *stats = &dev->stats;
 struct sk_buff *skb;
 struct can_frame *frame;

 netdev_err(dev, "msg lost in rxf0\n");

 stats->rx_errors++;
 stats->rx_over_errors++;

 skb = alloc_can_err_skb(dev, &frame);
 if (unlikely(!skb))
  return 0;

 frame->can_id |= CAN_ERR_CRTL;
 frame->data[1] = CAN_ERR_CRTL_RX_OVERFLOW;

 netif_receive_skb(skb);

 return 1;
}
