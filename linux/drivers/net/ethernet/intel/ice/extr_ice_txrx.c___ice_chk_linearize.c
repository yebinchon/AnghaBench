
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
typedef int skb_frag_t ;
struct TYPE_2__ {int nr_frags; int gso_size; int * frags; } ;


 int ICE_MAX_BUF_TXD ;
 scalar_t__ skb_frag_size (int ) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static bool __ice_chk_linearize(struct sk_buff *skb)
{
 const skb_frag_t *frag, *stale;
 int nr_frags, sum;


 nr_frags = skb_shinfo(skb)->nr_frags;
 if (nr_frags < (ICE_MAX_BUF_TXD - 1))
  return 0;




 nr_frags -= ICE_MAX_BUF_TXD - 2;
 frag = &skb_shinfo(skb)->frags[0];







 sum = 1 - skb_shinfo(skb)->gso_size;


 sum += skb_frag_size(frag++);
 sum += skb_frag_size(frag++);
 sum += skb_frag_size(frag++);
 sum += skb_frag_size(frag++);
 sum += skb_frag_size(frag++);




 stale = &skb_shinfo(skb)->frags[0];
 for (;;) {
  sum += skb_frag_size(frag++);


  if (sum < 0)
   return 1;

  if (!nr_frags--)
   break;

  sum -= skb_frag_size(stale++);
 }

 return 0;
}
