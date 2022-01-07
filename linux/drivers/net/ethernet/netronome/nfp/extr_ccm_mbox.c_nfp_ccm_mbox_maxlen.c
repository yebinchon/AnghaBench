
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ cb; } ;
struct nfp_ccm_mbox_cmsg_cb {int max_len; } ;



__attribute__((used)) static int nfp_ccm_mbox_maxlen(const struct sk_buff *skb)
{
 struct nfp_ccm_mbox_cmsg_cb *cb = (void *)skb->cb;

 return cb->max_len;
}
