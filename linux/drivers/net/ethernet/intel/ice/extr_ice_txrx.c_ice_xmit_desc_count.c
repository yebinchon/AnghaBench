
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
typedef int skb_frag_t ;
struct TYPE_2__ {unsigned int nr_frags; int * frags; } ;


 scalar_t__ ice_txd_use_count (unsigned int) ;
 unsigned int skb_frag_size (int ) ;
 unsigned int skb_headlen (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static unsigned int ice_xmit_desc_count(struct sk_buff *skb)
{
 const skb_frag_t *frag = &skb_shinfo(skb)->frags[0];
 unsigned int nr_frags = skb_shinfo(skb)->nr_frags;
 unsigned int count = 0, size = skb_headlen(skb);

 for (;;) {
  count += ice_txd_use_count(size);

  if (!nr_frags--)
   break;

  size = skb_frag_size(frag++);
 }

 return count;
}
