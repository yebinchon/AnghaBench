
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct nfp_bpf_map {int tid; struct nfp_app_bpf* bpf; } ;
struct nfp_app_bpf {int ccm; } ;
struct cmsg_req_map_op {void* flags; void* count; void* tid; } ;
struct cmsg_reply_map_op {int reply_hdr; int count; } ;
struct bpf_map {int value_size; int key_size; } ;
struct bpf_offloaded_map {struct bpf_map map; struct nfp_bpf_map* dev_priv; } ;
typedef enum nfp_ccm_type { ____Placeholder_nfp_ccm_type } nfp_ccm_type ;


 int EIO ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 unsigned int be32_to_cpu (int ) ;
 int cmsg_warn (struct nfp_app_bpf*,char*,int,int,...) ;
 void* cpu_to_be32 (int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int memcpy (int *,int *,int ) ;
 int nfp_bpf_cmsg_map_reply_size (struct nfp_app_bpf*,unsigned int) ;
 struct sk_buff* nfp_bpf_cmsg_map_req_alloc (struct nfp_app_bpf*,int) ;
 unsigned int nfp_bpf_ctrl_op_cache_get (struct nfp_bpf_map*,int,int *,int *,int *,int *) ;
 int nfp_bpf_ctrl_op_cache_put (struct nfp_bpf_map*,int,struct sk_buff*,int ) ;
 int nfp_bpf_ctrl_rc_to_errno (struct nfp_app_bpf*,int *) ;
 int * nfp_bpf_ctrl_reply_key (struct nfp_app_bpf*,struct cmsg_reply_map_op*,int ) ;
 int * nfp_bpf_ctrl_reply_val (struct nfp_app_bpf*,struct cmsg_reply_map_op*,int ) ;
 int * nfp_bpf_ctrl_req_key (struct nfp_app_bpf*,struct cmsg_req_map_op*,int ) ;
 int * nfp_bpf_ctrl_req_val (struct nfp_app_bpf*,struct cmsg_req_map_op*,int ) ;
 struct sk_buff* nfp_ccm_communicate (int *,struct sk_buff*,int,int ) ;

__attribute__((used)) static int
nfp_bpf_ctrl_entry_op(struct bpf_offloaded_map *offmap, enum nfp_ccm_type op,
        u8 *key, u8 *value, u64 flags, u8 *out_key, u8 *out_value)
{
 struct nfp_bpf_map *nfp_map = offmap->dev_priv;
 unsigned int n_entries, reply_entries, count;
 struct nfp_app_bpf *bpf = nfp_map->bpf;
 struct bpf_map *map = &offmap->map;
 struct cmsg_reply_map_op *reply;
 struct cmsg_req_map_op *req;
 struct sk_buff *skb;
 u32 cache_gen;
 int err;


 if (flags >> 32)
  return -EOPNOTSUPP;


 n_entries = nfp_bpf_ctrl_op_cache_get(nfp_map, op, key, out_key,
           out_value, &cache_gen);
 if (!n_entries)
  return 0;

 skb = nfp_bpf_cmsg_map_req_alloc(bpf, 1);
 if (!skb) {
  err = -ENOMEM;
  goto err_cache_put;
 }

 req = (void *)skb->data;
 req->tid = cpu_to_be32(nfp_map->tid);
 req->count = cpu_to_be32(n_entries);
 req->flags = cpu_to_be32(flags);


 if (key)
  memcpy(nfp_bpf_ctrl_req_key(bpf, req, 0), key, map->key_size);
 if (value)
  memcpy(nfp_bpf_ctrl_req_val(bpf, req, 0), value,
         map->value_size);

 skb = nfp_ccm_communicate(&bpf->ccm, skb, op, 0);
 if (IS_ERR(skb)) {
  err = PTR_ERR(skb);
  goto err_cache_put;
 }

 if (skb->len < sizeof(*reply)) {
  cmsg_warn(bpf, "cmsg drop - type 0x%02x too short %d!\n",
     op, skb->len);
  err = -EIO;
  goto err_free;
 }

 reply = (void *)skb->data;
 count = be32_to_cpu(reply->count);
 err = nfp_bpf_ctrl_rc_to_errno(bpf, &reply->reply_hdr);



 reply_entries = count + !!err;
 if (n_entries > 1 && count)
  err = 0;
 if (err)
  goto err_free;

 if (skb->len != nfp_bpf_cmsg_map_reply_size(bpf, reply_entries)) {
  cmsg_warn(bpf, "cmsg drop - type 0x%02x too short %d for %d entries!\n",
     op, skb->len, reply_entries);
  err = -EIO;
  goto err_free;
 }


 if (out_key)
  memcpy(out_key, nfp_bpf_ctrl_reply_key(bpf, reply, 0),
         map->key_size);
 if (out_value)
  memcpy(out_value, nfp_bpf_ctrl_reply_val(bpf, reply, 0),
         map->value_size);

 nfp_bpf_ctrl_op_cache_put(nfp_map, op, skb, cache_gen);

 return 0;
err_free:
 dev_kfree_skb_any(skb);
err_cache_put:
 nfp_bpf_ctrl_op_cache_put(nfp_map, op, ((void*)0), cache_gen);
 return err;
}
