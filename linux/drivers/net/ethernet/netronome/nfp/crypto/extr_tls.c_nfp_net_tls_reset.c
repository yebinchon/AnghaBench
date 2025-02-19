
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct nfp_net {int dummy; } ;
struct nfp_crypto_req_reset {scalar_t__ ep_id; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NFP_CCM_TYPE_CRYPTO_RESET ;
 struct sk_buff* nfp_net_tls_alloc_simple (struct nfp_net*,int,int ) ;
 int nfp_net_tls_communicate_simple (struct nfp_net*,struct sk_buff*,char*,int ) ;

__attribute__((used)) static int nfp_net_tls_reset(struct nfp_net *nn)
{
 struct nfp_crypto_req_reset *req;
 struct sk_buff *skb;

 skb = nfp_net_tls_alloc_simple(nn, sizeof(*req), GFP_KERNEL);
 if (!skb)
  return -ENOMEM;

 req = (void *)skb->data;
 req->ep_id = 0;

 return nfp_net_tls_communicate_simple(nn, skb, "reset",
           NFP_CCM_TYPE_CRYPTO_RESET);
}
