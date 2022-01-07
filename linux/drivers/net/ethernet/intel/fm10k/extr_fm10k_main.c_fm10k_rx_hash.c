
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int rss; } ;
struct TYPE_5__ {int pkt_info; } ;
union fm10k_rx_desc {TYPE_3__ d; TYPE_2__ w; } ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct fm10k_ring {TYPE_1__* netdev; } ;
struct TYPE_4__ {int features; } ;


 int BIT (int) ;
 int FM10K_RSS_L4_TYPES_MASK ;
 int FM10K_RXD_RSSTYPE_MASK ;
 int NETIF_F_RXHASH ;
 int PKT_HASH_TYPE_L3 ;
 int PKT_HASH_TYPE_L4 ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int skb_set_hash (struct sk_buff*,int ,int ) ;

__attribute__((used)) static inline void fm10k_rx_hash(struct fm10k_ring *ring,
     union fm10k_rx_desc *rx_desc,
     struct sk_buff *skb)
{
 u16 rss_type;

 if (!(ring->netdev->features & NETIF_F_RXHASH))
  return;

 rss_type = le16_to_cpu(rx_desc->w.pkt_info) & FM10K_RXD_RSSTYPE_MASK;
 if (!rss_type)
  return;

 skb_set_hash(skb, le32_to_cpu(rx_desc->d.rss),
       (BIT(rss_type) & FM10K_RSS_L4_TYPES_MASK) ?
       PKT_HASH_TYPE_L4 : PKT_HASH_TYPE_L3);
}
