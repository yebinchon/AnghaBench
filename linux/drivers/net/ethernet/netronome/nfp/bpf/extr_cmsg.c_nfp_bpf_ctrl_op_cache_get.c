
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct nfp_bpf_map {scalar_t__ cache_to; int cache_lock; TYPE_2__* cache; scalar_t__ cache_blockers; int cache_gen; struct nfp_app_bpf* bpf; TYPE_1__* offmap; } ;
struct nfp_app_bpf {int cmsg_cache_cnt; } ;
struct cmsg_reply_map_op {int count; } ;
struct bpf_map {int key_size; int value_size; } ;
typedef enum nfp_ccm_type { ____Placeholder_nfp_ccm_type } nfp_ccm_type ;
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_3__ {struct bpf_map map; } ;


 int NFP_CCM_TYPE_BPF_MAP_GETNEXT ;
 int NFP_CCM_TYPE_BPF_MAP_LOOKUP ;
 unsigned int be32_to_cpu (int ) ;
 int dev_consume_skb_any (TYPE_2__*) ;
 scalar_t__ ktime_get_ns () ;
 scalar_t__ memcmp (void*,int const*,int ) ;
 int memcpy (int *,void*,int ) ;
 int nfp_bpf_ctrl_op_cache_capable (int) ;
 scalar_t__ nfp_bpf_ctrl_op_cache_fill (int) ;
 scalar_t__ nfp_bpf_ctrl_op_cache_invalidate (int) ;
 void* nfp_bpf_ctrl_reply_key (struct nfp_app_bpf*,struct cmsg_reply_map_op*,unsigned int) ;
 void* nfp_bpf_ctrl_reply_val (struct nfp_app_bpf*,struct cmsg_reply_map_op*,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static unsigned int
nfp_bpf_ctrl_op_cache_get(struct nfp_bpf_map *nfp_map, enum nfp_ccm_type op,
     const u8 *key, u8 *out_key, u8 *out_value,
     u32 *cache_gen)
{
 struct bpf_map *map = &nfp_map->offmap->map;
 struct nfp_app_bpf *bpf = nfp_map->bpf;
 unsigned int i, count, n_entries;
 struct cmsg_reply_map_op *reply;

 n_entries = nfp_bpf_ctrl_op_cache_fill(op) ? bpf->cmsg_cache_cnt : 1;

 spin_lock(&nfp_map->cache_lock);
 *cache_gen = nfp_map->cache_gen;
 if (nfp_map->cache_blockers)
  n_entries = 1;

 if (nfp_bpf_ctrl_op_cache_invalidate(op))
  goto exit_block;
 if (!nfp_bpf_ctrl_op_cache_capable(op))
  goto exit_unlock;

 if (!nfp_map->cache)
  goto exit_unlock;
 if (nfp_map->cache_to < ktime_get_ns())
  goto exit_invalidate;

 reply = (void *)nfp_map->cache->data;
 count = be32_to_cpu(reply->count);

 for (i = 0; i < count; i++) {
  void *cached_key;

  cached_key = nfp_bpf_ctrl_reply_key(bpf, reply, i);
  if (memcmp(cached_key, key, map->key_size))
   continue;

  if (op == NFP_CCM_TYPE_BPF_MAP_LOOKUP)
   memcpy(out_value, nfp_bpf_ctrl_reply_val(bpf, reply, i),
          map->value_size);
  if (op == NFP_CCM_TYPE_BPF_MAP_GETNEXT) {
   if (i + 1 == count)
    break;

   memcpy(out_key,
          nfp_bpf_ctrl_reply_key(bpf, reply, i + 1),
          map->key_size);
  }

  n_entries = 0;
  goto exit_unlock;
 }
 goto exit_unlock;

exit_block:
 nfp_map->cache_blockers++;
exit_invalidate:
 dev_consume_skb_any(nfp_map->cache);
 nfp_map->cache = ((void*)0);
exit_unlock:
 spin_unlock(&nfp_map->cache_lock);
 return n_entries;
}
