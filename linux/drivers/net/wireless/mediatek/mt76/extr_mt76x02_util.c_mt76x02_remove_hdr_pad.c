
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;


 int ieee80211_get_hdrlen_from_skb (struct sk_buff*) ;
 int memmove (scalar_t__,scalar_t__,int) ;
 int skb_pull (struct sk_buff*,int) ;

void mt76x02_remove_hdr_pad(struct sk_buff *skb, int len)
{
 int hdrlen;

 if (!len)
  return;

 hdrlen = ieee80211_get_hdrlen_from_skb(skb);
 memmove(skb->data + len, skb->data, hdrlen);
 skb_pull(skb, len);
}
