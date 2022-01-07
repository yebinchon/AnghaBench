
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; } ;
struct net_device {scalar_t__ min_mtu; } ;


 int skb_put_padto (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static int ibmvnic_xmit_workarounds(struct sk_buff *skb,
        struct net_device *netdev)
{






 if (skb->len < netdev->min_mtu)
  return skb_put_padto(skb, netdev->min_mtu);

 return 0;
}
