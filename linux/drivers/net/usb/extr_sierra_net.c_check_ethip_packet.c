
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbnet {int net; } ;
struct sk_buff {int protocol; } ;
struct TYPE_2__ {int h_proto; } ;


 int ETH_HLEN ;
 TYPE_1__* eth_hdr (struct sk_buff*) ;
 int netdev_err (int ,char*) ;
 int pskb_may_pull (struct sk_buff*,int ) ;
 scalar_t__ skb_is_nonlinear (struct sk_buff*) ;
 int skb_reset_mac_header (struct sk_buff*) ;

__attribute__((used)) static int check_ethip_packet(struct sk_buff *skb, struct usbnet *dev)
{
 skb_reset_mac_header(skb);

 if (skb_is_nonlinear(skb)) {
  netdev_err(dev->net, "Non linear buffer-dropping\n");
  return 0;
 }

 if (!pskb_may_pull(skb, ETH_HLEN))
  return 0;
 skb->protocol = eth_hdr(skb)->h_proto;

 return 1;
}
