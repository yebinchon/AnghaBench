
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ cb; } ;
struct TYPE_2__ {int runq_work; int workq; int queue; } ;
struct nfp_net {TYPE_1__ mbox_cmsg; } ;
struct nfp_ccm_mbox_cmsg_cb {scalar_t__ posted; int state; } ;


 int NFP_NET_MBOX_CMSG_STATE_NEXT ;
 int queue_work (int ,int *) ;
 struct sk_buff* skb_peek (int *) ;

__attribute__((used)) static void nfp_ccm_mbox_mark_next_runner(struct nfp_net *nn)
{
 struct nfp_ccm_mbox_cmsg_cb *cb;
 struct sk_buff *skb;

 skb = skb_peek(&nn->mbox_cmsg.queue);
 if (!skb)
  return;

 cb = (void *)skb->cb;
 cb->state = NFP_NET_MBOX_CMSG_STATE_NEXT;
 if (cb->posted)
  queue_work(nn->mbox_cmsg.workq, &nn->mbox_cmsg.runq_work);
}
