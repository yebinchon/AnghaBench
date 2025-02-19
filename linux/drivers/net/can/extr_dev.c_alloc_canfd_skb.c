
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int ip_summed; int pkt_type; int protocol; } ;
struct net_device {int ifindex; } ;
struct canfd_frame {int dummy; } ;
struct can_skb_priv {int dummy; } ;
struct TYPE_2__ {scalar_t__ skbcnt; int ifindex; } ;


 int CHECKSUM_UNNECESSARY ;
 int ETH_P_CANFD ;
 int PACKET_BROADCAST ;
 TYPE_1__* can_skb_prv (struct sk_buff*) ;
 int can_skb_reserve (struct sk_buff*) ;
 int htons (int ) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,int) ;
 struct canfd_frame* skb_put_zero (struct sk_buff*,int) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

struct sk_buff *alloc_canfd_skb(struct net_device *dev,
    struct canfd_frame **cfd)
{
 struct sk_buff *skb;

 skb = netdev_alloc_skb(dev, sizeof(struct can_skb_priv) +
          sizeof(struct canfd_frame));
 if (unlikely(!skb))
  return ((void*)0);

 skb->protocol = htons(ETH_P_CANFD);
 skb->pkt_type = PACKET_BROADCAST;
 skb->ip_summed = CHECKSUM_UNNECESSARY;

 skb_reset_mac_header(skb);
 skb_reset_network_header(skb);
 skb_reset_transport_header(skb);

 can_skb_reserve(skb);
 can_skb_prv(skb)->ifindex = dev->ifindex;
 can_skb_prv(skb)->skbcnt = 0;

 *cfd = skb_put_zero(skb, sizeof(struct canfd_frame));

 return skb;
}
