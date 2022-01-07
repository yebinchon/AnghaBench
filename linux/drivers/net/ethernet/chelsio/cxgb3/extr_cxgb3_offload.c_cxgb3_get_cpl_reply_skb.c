
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {size_t len; } ;
typedef int gfp_t ;


 int BUG_ON (int) ;
 int __skb_put (struct sk_buff*,size_t) ;
 int __skb_trim (struct sk_buff*,size_t) ;
 struct sk_buff* alloc_skb (size_t,int ) ;
 scalar_t__ likely (int) ;
 int skb_cloned (struct sk_buff*) ;
 int skb_get (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *cxgb3_get_cpl_reply_skb(struct sk_buff *skb, size_t len,
            gfp_t gfp)
{
 if (likely(!skb_cloned(skb))) {
  BUG_ON(skb->len < len);
  __skb_trim(skb, len);
  skb_get(skb);
 } else {
  skb = alloc_skb(len, gfp);
  if (skb)
   __skb_put(skb, len);
 }
 return skb;
}
