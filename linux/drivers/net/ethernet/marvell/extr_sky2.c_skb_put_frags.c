
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {unsigned int tail; unsigned int len; unsigned int data_len; int truesize; } ;
typedef int skb_frag_t ;
struct TYPE_2__ {int nr_frags; int * frags; } ;


 scalar_t__ PAGE_SIZE ;
 int __skb_frag_unref (int *) ;
 unsigned int min (unsigned int,unsigned int) ;
 int skb_frag_size_set (int *,unsigned int) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void skb_put_frags(struct sk_buff *skb, unsigned int hdr_space,
     unsigned int length)
{
 int i, num_frags;
 unsigned int size;


 size = min(length, hdr_space);
 skb->tail += size;
 skb->len += size;
 length -= size;

 num_frags = skb_shinfo(skb)->nr_frags;
 for (i = 0; i < num_frags; i++) {
  skb_frag_t *frag = &skb_shinfo(skb)->frags[i];

  if (length == 0) {

   __skb_frag_unref(frag);
   --skb_shinfo(skb)->nr_frags;
  } else {
   size = min(length, (unsigned) PAGE_SIZE);

   skb_frag_size_set(frag, size);
   skb->data_len += size;
   skb->truesize += PAGE_SIZE;
   skb->len += size;
   length -= size;
  }
 }
}
