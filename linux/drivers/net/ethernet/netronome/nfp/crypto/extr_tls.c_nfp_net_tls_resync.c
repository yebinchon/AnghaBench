
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct nfp_net_tls_offload_ctx {int next_seq; int * fw_handle; } ;
struct nfp_net {int dummy; } ;
struct nfp_crypto_req_update {int rec_no; int tcp_seq; int handle; int resv; int opcode; scalar_t__ ep_id; } ;
struct nfp_crypto_reply_simple {int dummy; } ;
struct net_device {int dummy; } ;
typedef int gfp_t ;
typedef enum tls_offload_ctx_dir { ____Placeholder_tls_offload_ctx_dir } tls_offload_ctx_dir ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int NFP_CCM_TYPE_CRYPTO_UPDATE ;
 int TLS_OFFLOAD_CTX_DIR_TX ;
 int cpu_to_be32 (int ) ;
 int memcpy (int ,int *,int) ;
 int memset (int ,int ,int) ;
 struct nfp_net* netdev_priv (struct net_device*) ;
 int nfp_ccm_mbox_post (struct nfp_net*,struct sk_buff*,int ,int) ;
 struct sk_buff* nfp_net_tls_alloc_simple (struct nfp_net*,int,int ) ;
 int nfp_net_tls_communicate_simple (struct nfp_net*,struct sk_buff*,char*,int ) ;
 int nfp_tls_1_2_dir_to_opcode (int) ;
 struct nfp_net_tls_offload_ctx* tls_driver_ctx (struct sock*,int) ;

__attribute__((used)) static int
nfp_net_tls_resync(struct net_device *netdev, struct sock *sk, u32 seq,
     u8 *rcd_sn, enum tls_offload_ctx_dir direction)
{
 struct nfp_net *nn = netdev_priv(netdev);
 struct nfp_net_tls_offload_ctx *ntls;
 struct nfp_crypto_req_update *req;
 struct sk_buff *skb;
 gfp_t flags;
 int err;

 flags = direction == TLS_OFFLOAD_CTX_DIR_TX ? GFP_KERNEL : GFP_ATOMIC;
 skb = nfp_net_tls_alloc_simple(nn, sizeof(*req), flags);
 if (!skb)
  return -ENOMEM;

 ntls = tls_driver_ctx(sk, direction);
 req = (void *)skb->data;
 req->ep_id = 0;
 req->opcode = nfp_tls_1_2_dir_to_opcode(direction);
 memset(req->resv, 0, sizeof(req->resv));
 memcpy(req->handle, ntls->fw_handle, sizeof(ntls->fw_handle));
 req->tcp_seq = cpu_to_be32(seq);
 memcpy(req->rec_no, rcd_sn, sizeof(req->rec_no));

 if (direction == TLS_OFFLOAD_CTX_DIR_TX) {
  err = nfp_net_tls_communicate_simple(nn, skb, "sync",
           NFP_CCM_TYPE_CRYPTO_UPDATE);
  if (err)
   return err;
  ntls->next_seq = seq;
 } else {
  nfp_ccm_mbox_post(nn, skb, NFP_CCM_TYPE_CRYPTO_UPDATE,
      sizeof(struct nfp_crypto_reply_simple));
 }

 return 0;
}
