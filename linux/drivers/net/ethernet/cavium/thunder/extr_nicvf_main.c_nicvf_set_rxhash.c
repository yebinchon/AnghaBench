
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct net_device {int features; } ;
struct cqe_rx_t {int rss_alg; int rss_tag; } ;


 int NETIF_F_RXHASH ;
 int PKT_HASH_TYPE_L3 ;
 int PKT_HASH_TYPE_L4 ;
 int PKT_HASH_TYPE_NONE ;



 int skb_set_hash (struct sk_buff*,int ,int ) ;

__attribute__((used)) static inline void nicvf_set_rxhash(struct net_device *netdev,
        struct cqe_rx_t *cqe_rx,
        struct sk_buff *skb)
{
 u8 hash_type;
 u32 hash;

 if (!(netdev->features & NETIF_F_RXHASH))
  return;

 switch (cqe_rx->rss_alg) {
 case 129:
 case 128:
  hash_type = PKT_HASH_TYPE_L4;
  hash = cqe_rx->rss_tag;
  break;
 case 130:
  hash_type = PKT_HASH_TYPE_L3;
  hash = cqe_rx->rss_tag;
  break;
 default:
  hash_type = PKT_HASH_TYPE_NONE;
  hash = 0;
 }

 skb_set_hash(skb, hash, hash_type);
}
