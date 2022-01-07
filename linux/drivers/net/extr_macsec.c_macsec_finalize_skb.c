
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sk_buff {scalar_t__ len; scalar_t__ data; int ip_summed; } ;


 int CHECKSUM_NONE ;
 int ETH_ALEN ;
 int memmove (scalar_t__,scalar_t__,int) ;
 int pskb_trim_unique (struct sk_buff*,scalar_t__) ;
 int skb_pull (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static void macsec_finalize_skb(struct sk_buff *skb, u8 icv_len, u8 hdr_len)
{
 skb->ip_summed = CHECKSUM_NONE;
 memmove(skb->data + hdr_len, skb->data, 2 * ETH_ALEN);
 skb_pull(skb, hdr_len);
 pskb_trim_unique(skb, skb->len - icv_len);
}
