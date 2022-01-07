
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int queue_mapping; struct net_device* dev; } ;
struct net_failover_info {int standby_dev; int primary_dev; } ;
struct net_device {int dummy; } ;
typedef int netdev_tx_t ;
struct TYPE_2__ {int slave_dev_queue_mapping; } ;


 int dev_queue_xmit (struct sk_buff*) ;
 int net_failover_drop_xmit (struct sk_buff*,struct net_device*) ;
 int net_failover_xmit_ready (struct net_device*) ;
 struct net_failover_info* netdev_priv (struct net_device*) ;
 TYPE_1__* qdisc_skb_cb (struct sk_buff*) ;
 struct net_device* rcu_dereference_bh (int ) ;

__attribute__((used)) static netdev_tx_t net_failover_start_xmit(struct sk_buff *skb,
        struct net_device *dev)
{
 struct net_failover_info *nfo_info = netdev_priv(dev);
 struct net_device *xmit_dev;


 xmit_dev = rcu_dereference_bh(nfo_info->primary_dev);
 if (!xmit_dev || !net_failover_xmit_ready(xmit_dev)) {
  xmit_dev = rcu_dereference_bh(nfo_info->standby_dev);
  if (!xmit_dev || !net_failover_xmit_ready(xmit_dev))
   return net_failover_drop_xmit(skb, dev);
 }

 skb->dev = xmit_dev;
 skb->queue_mapping = qdisc_skb_cb(skb)->slave_dev_queue_mapping;

 return dev_queue_xmit(skb);
}
