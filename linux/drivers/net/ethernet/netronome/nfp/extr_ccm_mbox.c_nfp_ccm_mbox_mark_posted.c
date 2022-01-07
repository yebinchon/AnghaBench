
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ cb; } ;
struct nfp_ccm_mbox_cmsg_cb {int posted; } ;



__attribute__((used)) static void nfp_ccm_mbox_mark_posted(struct sk_buff *skb)
{
 struct nfp_ccm_mbox_cmsg_cb *cb = (void *)skb->cb;

 cb->posted = 1;
}
