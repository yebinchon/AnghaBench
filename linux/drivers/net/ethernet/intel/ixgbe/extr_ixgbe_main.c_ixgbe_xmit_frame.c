
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
typedef int netdev_tx_t ;


 int __ixgbe_xmit_frame (struct sk_buff*,struct net_device*,int *) ;

__attribute__((used)) static netdev_tx_t ixgbe_xmit_frame(struct sk_buff *skb,
        struct net_device *netdev)
{
 return __ixgbe_xmit_frame(skb, netdev, ((void*)0));
}
