
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
typedef int skb_frag_t ;
struct TYPE_2__ {unsigned int nr_frags; int * frags; } ;


 unsigned int PAGE_SIZE ;
 unsigned int SGE_TX_DESC_MAX_PLEN ;
 unsigned int skb_frag_size (int const*) ;
 unsigned int skb_headlen (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static inline unsigned int compute_large_page_tx_descs(struct sk_buff *skb)
{
 unsigned int count = 0;

 if (PAGE_SIZE > SGE_TX_DESC_MAX_PLEN) {
  unsigned int nfrags = skb_shinfo(skb)->nr_frags;
  unsigned int i, len = skb_headlen(skb);
  while (len > SGE_TX_DESC_MAX_PLEN) {
   count++;
   len -= SGE_TX_DESC_MAX_PLEN;
  }
  for (i = 0; nfrags--; i++) {
   const skb_frag_t *frag = &skb_shinfo(skb)->frags[i];
   len = skb_frag_size(frag);
   while (len > SGE_TX_DESC_MAX_PLEN) {
    count++;
    len -= SGE_TX_DESC_MAX_PLEN;
   }
  }
 }
 return count;
}
