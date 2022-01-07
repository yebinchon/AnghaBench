
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ cb; } ;
struct nfp_ccm_mbox_cmsg_cb {int max_len; unsigned int exp_reply; int posted; scalar_t__ err; int state; } ;


 int NFP_NET_MBOX_CMSG_STATE_QUEUED ;

__attribute__((used)) static void
nfp_ccm_mbox_msg_init(struct sk_buff *skb, unsigned int exp_reply, int max_len)
{
 struct nfp_ccm_mbox_cmsg_cb *cb = (void *)skb->cb;

 cb->state = NFP_NET_MBOX_CMSG_STATE_QUEUED;
 cb->err = 0;
 cb->max_len = max_len;
 cb->exp_reply = exp_reply;
 cb->posted = 0;
}
