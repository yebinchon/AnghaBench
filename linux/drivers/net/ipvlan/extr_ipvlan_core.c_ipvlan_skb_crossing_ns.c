
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct net_device* dev; } ;
struct net_device {int dummy; } ;


 int dev_net (struct net_device*) ;
 int net_eq (int ,int ) ;
 int skb_scrub_packet (struct sk_buff*,int) ;

__attribute__((used)) static void ipvlan_skb_crossing_ns(struct sk_buff *skb, struct net_device *dev)
{
 bool xnet = 1;

 if (dev)
  xnet = !net_eq(dev_net(skb->dev), dev_net(dev));

 skb_scrub_packet(skb, xnet);
 if (dev)
  skb->dev = dev;
}
