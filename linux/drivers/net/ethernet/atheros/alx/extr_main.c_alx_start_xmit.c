
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct alx_priv {int dummy; } ;
typedef int netdev_tx_t ;


 int alx_start_xmit_ring (struct sk_buff*,int ) ;
 int alx_tx_queue_mapping (struct alx_priv*,struct sk_buff*) ;
 struct alx_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static netdev_tx_t alx_start_xmit(struct sk_buff *skb,
      struct net_device *netdev)
{
 struct alx_priv *alx = netdev_priv(netdev);
 return alx_start_xmit_ring(skb, alx_tx_queue_mapping(alx, skb));
}
