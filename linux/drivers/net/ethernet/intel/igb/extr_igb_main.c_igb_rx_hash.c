
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int rss; } ;
struct TYPE_7__ {TYPE_2__ hi_dword; } ;
struct TYPE_8__ {TYPE_3__ lower; } ;
union e1000_adv_rx_desc {TYPE_4__ wb; } ;
struct sk_buff {int dummy; } ;
struct igb_ring {TYPE_1__* netdev; } ;
struct TYPE_5__ {int features; } ;


 int NETIF_F_RXHASH ;
 int PKT_HASH_TYPE_L3 ;
 int le32_to_cpu (int ) ;
 int skb_set_hash (struct sk_buff*,int ,int ) ;

__attribute__((used)) static inline void igb_rx_hash(struct igb_ring *ring,
          union e1000_adv_rx_desc *rx_desc,
          struct sk_buff *skb)
{
 if (ring->netdev->features & NETIF_F_RXHASH)
  skb_set_hash(skb,
        le32_to_cpu(rx_desc->wb.lower.hi_dword.rss),
        PKT_HASH_TYPE_L3);
}
