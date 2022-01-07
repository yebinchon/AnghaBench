
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct net_device* dev; } ;
struct net_failover_info {int standby_dev; int primary_dev; } ;
struct net_device {int rx_handler_data; } ;
typedef int rx_handler_result_t ;


 int RX_HANDLER_ANOTHER ;
 int RX_HANDLER_EXACT ;
 struct net_failover_info* netdev_priv (struct net_device*) ;
 struct net_device* rcu_dereference (int ) ;

__attribute__((used)) static rx_handler_result_t net_failover_handle_frame(struct sk_buff **pskb)
{
 struct sk_buff *skb = *pskb;
 struct net_device *dev = rcu_dereference(skb->dev->rx_handler_data);
 struct net_failover_info *nfo_info = netdev_priv(dev);
 struct net_device *primary_dev, *standby_dev;

 primary_dev = rcu_dereference(nfo_info->primary_dev);
 standby_dev = rcu_dereference(nfo_info->standby_dev);

 if (primary_dev && skb->dev == standby_dev)
  return RX_HANDLER_EXACT;

 skb->dev = dev;

 return RX_HANDLER_ANOTHER;
}
