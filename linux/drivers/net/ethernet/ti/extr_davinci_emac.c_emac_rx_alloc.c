
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct emac_priv {int rx_buf_size; int ndev; } ;


 int NET_IP_ALIGN ;
 scalar_t__ WARN_ON (int) ;
 struct sk_buff* netdev_alloc_skb (int ,int ) ;
 int skb_reserve (struct sk_buff*,int ) ;

__attribute__((used)) static struct sk_buff *emac_rx_alloc(struct emac_priv *priv)
{
 struct sk_buff *skb = netdev_alloc_skb(priv->ndev, priv->rx_buf_size);
 if (WARN_ON(!skb))
  return ((void*)0);
 skb_reserve(skb, NET_IP_ALIGN);
 return skb;
}
