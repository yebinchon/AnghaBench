
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
typedef int skb_frag_t ;
struct TYPE_2__ {int nr_frags; int * frags; } ;


 unsigned long PAGE_MASK ;
 scalar_t__ PFN_UP (unsigned long) ;
 unsigned long skb_frag_off (int *) ;
 unsigned long skb_frag_size (int *) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static int count_skb_frag_slots(struct sk_buff *skb)
{
 int i, frags = skb_shinfo(skb)->nr_frags;
 int pages = 0;

 for (i = 0; i < frags; i++) {
  skb_frag_t *frag = skb_shinfo(skb)->frags + i;
  unsigned long size = skb_frag_size(frag);
  unsigned long offset = skb_frag_off(frag);


  offset &= ~PAGE_MASK;
  pages += PFN_UP(offset + size);
 }
 return pages;
}
