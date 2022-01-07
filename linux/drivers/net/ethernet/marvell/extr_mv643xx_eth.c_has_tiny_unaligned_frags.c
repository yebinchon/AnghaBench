
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
typedef int skb_frag_t ;
struct TYPE_2__ {int nr_frags; int * frags; } ;


 int skb_frag_off (int const*) ;
 int skb_frag_size (int const*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static inline unsigned int has_tiny_unaligned_frags(struct sk_buff *skb)
{
 int frag;

 for (frag = 0; frag < skb_shinfo(skb)->nr_frags; frag++) {
  const skb_frag_t *fragp = &skb_shinfo(skb)->frags[frag];

  if (skb_frag_size(fragp) <= 8 && skb_frag_off(fragp) & 7)
   return 1;
 }

 return 0;
}
