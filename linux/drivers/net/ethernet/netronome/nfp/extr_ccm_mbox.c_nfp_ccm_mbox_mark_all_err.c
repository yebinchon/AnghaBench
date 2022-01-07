
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ cb; } ;
struct TYPE_4__ {int lock; } ;
struct TYPE_3__ {TYPE_2__ queue; } ;
struct nfp_net {TYPE_1__ mbox_cmsg; } ;
struct nfp_ccm_mbox_cmsg_cb {int err; int state; } ;


 int NFP_NET_MBOX_CMSG_STATE_DONE ;
 struct sk_buff* __skb_dequeue (TYPE_2__*) ;
 int nfp_ccm_mbox_mark_next_runner (struct nfp_net*) ;
 int smp_wmb () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void
nfp_ccm_mbox_mark_all_err(struct nfp_net *nn, struct sk_buff *last, int err)
{
 struct nfp_ccm_mbox_cmsg_cb *cb;
 struct sk_buff *skb;

 spin_lock_bh(&nn->mbox_cmsg.queue.lock);
 do {
  skb = __skb_dequeue(&nn->mbox_cmsg.queue);
  cb = (void *)skb->cb;

  cb->err = err;
  smp_wmb();
  cb->state = NFP_NET_MBOX_CMSG_STATE_DONE;
 } while (skb != last);

 nfp_ccm_mbox_mark_next_runner(nn);
 spin_unlock_bh(&nn->mbox_cmsg.queue.lock);
}
