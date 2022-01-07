
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct nfp_net {int dummy; } ;
struct nfp_crypto_req_del {int handle; scalar_t__ ep_id; } ;
typedef int __be32 ;


 int GFP_KERNEL ;
 int NFP_CCM_TYPE_CRYPTO_DEL ;
 int memcpy (int ,int *,int) ;
 struct sk_buff* nfp_net_tls_alloc_simple (struct nfp_net*,int,int ) ;
 int nfp_net_tls_communicate_simple (struct nfp_net*,struct sk_buff*,char*,int ) ;

__attribute__((used)) static void nfp_net_tls_del_fw(struct nfp_net *nn, __be32 *fw_handle)
{
 struct nfp_crypto_req_del *req;
 struct sk_buff *skb;

 skb = nfp_net_tls_alloc_simple(nn, sizeof(*req), GFP_KERNEL);
 if (!skb)
  return;

 req = (void *)skb->data;
 req->ep_id = 0;
 memcpy(req->handle, fw_handle, sizeof(req->handle));

 nfp_net_tls_communicate_simple(nn, skb, "delete",
           NFP_CCM_TYPE_CRYPTO_DEL);
}
