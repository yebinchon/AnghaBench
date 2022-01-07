
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skb_shared_info {int nr_frags; int * frags; } ;
struct sk_buff {int len; } ;


 void* skb_frag_address_safe (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool is_inline(int inline_thold, const struct sk_buff *skb,
        const struct skb_shared_info *shinfo,
        void **pfrag)
{
 void *ptr;

 if (skb->len > inline_thold || !inline_thold)
  return 0;

 if (shinfo->nr_frags == 1) {
  ptr = skb_frag_address_safe(&shinfo->frags[0]);
  if (unlikely(!ptr))
   return 0;
  *pfrag = ptr;
  return 1;
 }
 if (shinfo->nr_frags)
  return 0;
 return 1;
}
