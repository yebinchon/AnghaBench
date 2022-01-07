
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device_stats {int rx_errors; int rx_over_errors; } ;
struct net_device {struct net_device_stats stats; } ;
struct ican3_msg {scalar_t__ spec; int * data; } ;
struct ican3_dev {struct net_device* ndev; } ;
struct can_frame {int * data; int can_id; } ;


 int CAN_ERR_CRTL ;
 int CAN_ERR_CRTL_RX_OVERFLOW ;
 scalar_t__ MSG_MSGLOST ;
 struct sk_buff* alloc_can_err_skb (struct net_device*,struct can_frame**) ;
 int netdev_err (struct net_device*,char*,int ) ;
 int netif_rx (struct sk_buff*) ;

__attribute__((used)) static void ican3_handle_msglost(struct ican3_dev *mod, struct ican3_msg *msg)
{
 struct net_device *dev = mod->ndev;
 struct net_device_stats *stats = &dev->stats;
 struct can_frame *cf;
 struct sk_buff *skb;






 if (msg->spec == MSG_MSGLOST) {
  netdev_err(mod->ndev, "lost %d control messages\n", msg->data[0]);
  return;
 }
 skb = alloc_can_err_skb(dev, &cf);
 if (skb) {
  cf->can_id |= CAN_ERR_CRTL;
  cf->data[1] = CAN_ERR_CRTL_RX_OVERFLOW;
  stats->rx_over_errors++;
  stats->rx_errors++;
  netif_rx(skb);
 }
}
