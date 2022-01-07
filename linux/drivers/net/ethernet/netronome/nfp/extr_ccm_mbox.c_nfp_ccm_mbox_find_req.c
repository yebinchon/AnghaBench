
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int queue; } ;
struct nfp_net {TYPE_1__ mbox_cmsg; } ;
typedef scalar_t__ __be16 ;


 scalar_t__ __nfp_ccm_get_tag (struct sk_buff*) ;
 struct sk_buff* __skb_peek (int *) ;
 struct sk_buff* skb_queue_next (int *,struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *
nfp_ccm_mbox_find_req(struct nfp_net *nn, __be16 tag, struct sk_buff *last)
{
 struct sk_buff *skb;

 skb = __skb_peek(&nn->mbox_cmsg.queue);
 while (1) {
  if (__nfp_ccm_get_tag(skb) == tag)
   return skb;

  if (skb == last)
   return ((void*)0);
  skb = skb_queue_next(&nn->mbox_cmsg.queue, skb);
 }
}
