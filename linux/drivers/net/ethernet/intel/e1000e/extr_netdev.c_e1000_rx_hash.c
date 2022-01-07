
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int features; } ;
typedef int __le32 ;


 int NETIF_F_RXHASH ;
 int PKT_HASH_TYPE_L3 ;
 int le32_to_cpu (int ) ;
 int skb_set_hash (struct sk_buff*,int ,int ) ;

__attribute__((used)) static inline void e1000_rx_hash(struct net_device *netdev, __le32 rss,
     struct sk_buff *skb)
{
 if (netdev->features & NETIF_F_RXHASH)
  skb_set_hash(skb, le32_to_cpu(rss), PKT_HASH_TYPE_L3);
}
