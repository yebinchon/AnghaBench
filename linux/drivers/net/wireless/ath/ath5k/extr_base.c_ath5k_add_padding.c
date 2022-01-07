
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; scalar_t__ data; } ;


 int ath5k_common_padpos (struct sk_buff*) ;
 int memmove (scalar_t__,scalar_t__,int) ;
 int skb_headroom (struct sk_buff*) ;
 int skb_push (struct sk_buff*,int) ;

__attribute__((used)) static int ath5k_add_padding(struct sk_buff *skb)
{
 int padpos = ath5k_common_padpos(skb);
 int padsize = padpos & 3;

 if (padsize && skb->len > padpos) {

  if (skb_headroom(skb) < padsize)
   return -1;

  skb_push(skb, padsize);
  memmove(skb->data, skb->data + padsize, padpos);
  return padsize;
 }

 return 0;
}
