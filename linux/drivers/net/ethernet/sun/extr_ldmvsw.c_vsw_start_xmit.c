
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
typedef int netdev_tx_t ;


 int sunvnet_start_xmit_common (struct sk_buff*,struct net_device*,int ) ;
 int vsw_tx_port_find ;

__attribute__((used)) static netdev_tx_t vsw_start_xmit(struct sk_buff *skb, struct net_device *dev)
{
 return sunvnet_start_xmit_common(skb, dev, vsw_tx_port_find);
}
