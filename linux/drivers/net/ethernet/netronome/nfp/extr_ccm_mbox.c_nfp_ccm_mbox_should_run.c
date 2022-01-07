
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ cb; } ;
struct nfp_net {int dummy; } ;
struct nfp_ccm_mbox_cmsg_cb {scalar_t__ state; } ;


 scalar_t__ NFP_NET_MBOX_CMSG_STATE_NEXT ;

__attribute__((used)) static bool nfp_ccm_mbox_should_run(struct nfp_net *nn, struct sk_buff *skb)
{
 struct nfp_ccm_mbox_cmsg_cb *cb = (void *)skb->cb;

 return cb->state == NFP_NET_MBOX_CMSG_STATE_NEXT;
}
