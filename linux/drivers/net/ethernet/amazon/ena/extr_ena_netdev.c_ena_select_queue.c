
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;


 int netdev_pick_tx (struct net_device*,struct sk_buff*,int *) ;
 int skb_get_rx_queue (struct sk_buff*) ;
 scalar_t__ skb_rx_queue_recorded (struct sk_buff*) ;

__attribute__((used)) static u16 ena_select_queue(struct net_device *dev, struct sk_buff *skb,
       struct net_device *sb_dev)
{
 u16 qid;




 if (skb_rx_queue_recorded(skb))
  qid = skb_get_rx_queue(skb);
 else
  qid = netdev_pick_tx(dev, skb, ((void*)0));

 return qid;
}
