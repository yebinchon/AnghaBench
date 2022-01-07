
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nfp_net {int dummy; } ;
struct nfp_crypto_reply_simple {int dummy; } ;
typedef int gfp_t ;


 struct sk_buff* nfp_ccm_mbox_msg_alloc (struct nfp_net*,size_t,int,int ) ;

__attribute__((used)) static struct sk_buff *
nfp_net_tls_alloc_simple(struct nfp_net *nn, size_t req_sz, gfp_t flags)
{
 return nfp_ccm_mbox_msg_alloc(nn, req_sz,
          sizeof(struct nfp_crypto_reply_simple),
          flags);
}
