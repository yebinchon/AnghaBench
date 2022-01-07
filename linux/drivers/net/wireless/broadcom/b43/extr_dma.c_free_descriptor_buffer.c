
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct b43_dmaring {TYPE_2__* dev; scalar_t__ tx; } ;
struct b43_dmadesc_meta {int * skb; } ;
struct TYPE_4__ {TYPE_1__* wl; } ;
struct TYPE_3__ {int hw; } ;


 int dev_kfree_skb_any (int *) ;
 int ieee80211_free_txskb (int ,int *) ;

__attribute__((used)) static inline
    void free_descriptor_buffer(struct b43_dmaring *ring,
    struct b43_dmadesc_meta *meta)
{
 if (meta->skb) {
  if (ring->tx)
   ieee80211_free_txskb(ring->dev->wl->hw, meta->skb);
  else
   dev_kfree_skb_any(meta->skb);
  meta->skb = ((void*)0);
 }
}
