
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct ath10k_htc_hdr {int dummy; } ;
struct ath10k {int dummy; } ;


 int IS_ALIGNED (unsigned long,int) ;
 int ath10k_warn (struct ath10k*,char*) ;
 struct sk_buff* dev_alloc_skb (int) ;
 int skb_reserve (struct sk_buff*,int) ;

struct sk_buff *ath10k_htc_alloc_skb(struct ath10k *ar, int size)
{
 struct sk_buff *skb;

 skb = dev_alloc_skb(size + sizeof(struct ath10k_htc_hdr));
 if (!skb)
  return ((void*)0);

 skb_reserve(skb, sizeof(struct ath10k_htc_hdr));


 if (!IS_ALIGNED((unsigned long)skb->data, 4))
  ath10k_warn(ar, "Unaligned HTC tx skb\n");

 return skb;
}
