
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {unsigned int gso_size; int nr_frags; int * frags; } ;


 int HNS3_MAX_BD_NUM_NORMAL ;
 scalar_t__ hns3_gso_hdr_len (struct sk_buff*) ;
 scalar_t__ skb_frag_size (int *) ;
 scalar_t__ skb_headlen (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static bool hns3_skb_need_linearized(struct sk_buff *skb)
{
 int bd_limit = HNS3_MAX_BD_NUM_NORMAL - 1;
 unsigned int tot_len = 0;
 int i;

 for (i = 0; i < bd_limit; i++)
  tot_len += skb_frag_size(&skb_shinfo(skb)->frags[i]);




 if (((tot_len + skb_headlen(skb)) < (skb_shinfo(skb)->gso_size +
     hns3_gso_hdr_len(skb))) || (tot_len < skb_shinfo(skb)->gso_size))
  return 1;


 for (i = 0; i < (skb_shinfo(skb)->nr_frags - bd_limit - 1); i++) {
  tot_len -= skb_frag_size(&skb_shinfo(skb)->frags[i]);
  tot_len += skb_frag_size(&skb_shinfo(skb)->frags[i + bd_limit]);

  if (tot_len < skb_shinfo(skb)->gso_size)
   return 1;
 }

 return 0;
}
