
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skb_shared_info {int dummy; } ;
struct sk_buff {int dummy; } ;


 int SKB_DATA_ALIGN (int) ;
 struct sk_buff* build_skb (void*,int) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;

__attribute__((used)) static struct sk_buff *veth_build_skb(void *head, int headroom, int len,
          int buflen)
{
 struct sk_buff *skb;

 if (!buflen) {
  buflen = SKB_DATA_ALIGN(headroom + len) +
    SKB_DATA_ALIGN(sizeof(struct skb_shared_info));
 }
 skb = build_skb(head, buflen);
 if (!skb)
  return ((void*)0);

 skb_reserve(skb, headroom);
 skb_put(skb, len);

 return skb;
}
