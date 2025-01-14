
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct mt76x02_txwi {int dummy; } ;


 scalar_t__ MT_DMA_HDR_LEN ;
 int ieee80211_get_hdrlen_from_skb (struct sk_buff*) ;
 int mt76x02_remove_hdr_pad (struct sk_buff*,int) ;
 int skb_pull (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static void mt76x02u_remove_dma_hdr(struct sk_buff *skb)
{
 int hdr_len;

 skb_pull(skb, sizeof(struct mt76x02_txwi) + MT_DMA_HDR_LEN);
 hdr_len = ieee80211_get_hdrlen_from_skb(skb);
 if (hdr_len % 4)
  mt76x02_remove_hdr_pad(skb, 2);
}
