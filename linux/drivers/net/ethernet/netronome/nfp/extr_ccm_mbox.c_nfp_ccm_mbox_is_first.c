
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int queue; } ;
struct nfp_net {TYPE_1__ mbox_cmsg; } ;


 int skb_queue_is_first (int *,struct sk_buff*) ;

__attribute__((used)) static bool nfp_ccm_mbox_is_first(struct nfp_net *nn, struct sk_buff *skb)
{
 return skb_queue_is_first(&nn->mbox_cmsg.queue, skb);
}
