
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long long u32 ;
struct sk_buff {scalar_t__ data; } ;
struct nfp_app_bpf {int ccm; } ;
struct cmsg_req_map_alloc_tbl {scalar_t__ map_flags; void* map_type; void* max_entries; void* value_size; void* key_size; } ;
struct cmsg_reply_map_alloc_tbl {int tid; int reply_hdr; } ;
struct bpf_map {int map_type; int max_entries; int value_size; int key_size; } ;


 long long ENOMEM ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int NFP_CCM_TYPE_BPF_MAP_ALLOC ;
 long long PTR_ERR (struct sk_buff*) ;
 long long be32_to_cpu (int ) ;
 void* cpu_to_be32 (int ) ;
 int dev_consume_skb_any (struct sk_buff*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 struct sk_buff* nfp_bpf_cmsg_alloc (struct nfp_app_bpf*,int) ;
 int nfp_bpf_ctrl_rc_to_errno (struct nfp_app_bpf*,int *) ;
 struct sk_buff* nfp_ccm_communicate (int *,struct sk_buff*,int ,int) ;

long long int
nfp_bpf_ctrl_alloc_map(struct nfp_app_bpf *bpf, struct bpf_map *map)
{
 struct cmsg_reply_map_alloc_tbl *reply;
 struct cmsg_req_map_alloc_tbl *req;
 struct sk_buff *skb;
 u32 tid;
 int err;

 skb = nfp_bpf_cmsg_alloc(bpf, sizeof(*req));
 if (!skb)
  return -ENOMEM;

 req = (void *)skb->data;
 req->key_size = cpu_to_be32(map->key_size);
 req->value_size = cpu_to_be32(map->value_size);
 req->max_entries = cpu_to_be32(map->max_entries);
 req->map_type = cpu_to_be32(map->map_type);
 req->map_flags = 0;

 skb = nfp_ccm_communicate(&bpf->ccm, skb, NFP_CCM_TYPE_BPF_MAP_ALLOC,
      sizeof(*reply));
 if (IS_ERR(skb))
  return PTR_ERR(skb);

 reply = (void *)skb->data;
 err = nfp_bpf_ctrl_rc_to_errno(bpf, &reply->reply_hdr);
 if (err)
  goto err_free;

 tid = be32_to_cpu(reply->tid);
 dev_consume_skb_any(skb);

 return tid;
err_free:
 dev_kfree_skb_any(skb);
 return err;
}
