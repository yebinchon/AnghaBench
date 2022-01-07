
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct net_device* dev; } ;
struct net_device {int dummy; } ;


 int dev_queue_xmit (struct sk_buff*) ;

__attribute__((used)) static void
rmnet_bridge_handler(struct sk_buff *skb, struct net_device *bridge_dev)
{
 if (bridge_dev) {
  skb->dev = bridge_dev;
  dev_queue_xmit(skb);
 }
}
