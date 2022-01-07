
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct nfp_bpf_map {int tid; } ;
struct nfp_app_bpf {int ccm; } ;
struct cmsg_req_map_free_tbl {int tid; } ;
struct cmsg_reply_map_free_tbl {int reply_hdr; } ;


 scalar_t__ IS_ERR (struct sk_buff*) ;
 int NFP_CCM_TYPE_BPF_MAP_FREE ;
 int cmsg_warn (struct nfp_app_bpf*,char*,...) ;
 int cpu_to_be32 (int ) ;
 int dev_consume_skb_any (struct sk_buff*) ;
 struct sk_buff* nfp_bpf_cmsg_alloc (struct nfp_app_bpf*,int) ;
 int nfp_bpf_ctrl_rc_to_errno (struct nfp_app_bpf*,int *) ;
 struct sk_buff* nfp_ccm_communicate (int *,struct sk_buff*,int ,int) ;

void nfp_bpf_ctrl_free_map(struct nfp_app_bpf *bpf, struct nfp_bpf_map *nfp_map)
{
 struct cmsg_reply_map_free_tbl *reply;
 struct cmsg_req_map_free_tbl *req;
 struct sk_buff *skb;
 int err;

 skb = nfp_bpf_cmsg_alloc(bpf, sizeof(*req));
 if (!skb) {
  cmsg_warn(bpf, "leaking map - failed to allocate msg\n");
  return;
 }

 req = (void *)skb->data;
 req->tid = cpu_to_be32(nfp_map->tid);

 skb = nfp_ccm_communicate(&bpf->ccm, skb, NFP_CCM_TYPE_BPF_MAP_FREE,
      sizeof(*reply));
 if (IS_ERR(skb)) {
  cmsg_warn(bpf, "leaking map - I/O error\n");
  return;
 }

 reply = (void *)skb->data;
 err = nfp_bpf_ctrl_rc_to_errno(bpf, &reply->reply_hdr);
 if (err)
  cmsg_warn(bpf, "leaking map - FW responded with: %d\n", err);

 dev_consume_skb_any(skb);
}
