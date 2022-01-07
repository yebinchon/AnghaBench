
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_bpf_map {TYPE_1__* use_map; } ;
struct bpf_verifier_env {int dummy; } ;
typedef enum nfp_bpf_map_use { ____Placeholder_nfp_bpf_map_use } nfp_bpf_map_use ;
struct TYPE_2__ {scalar_t__ type; scalar_t__ non_zero_update; } ;


 int EOPNOTSUPP ;
 scalar_t__ NFP_MAP_UNUSED ;
 int NFP_MAP_USE_ATOMIC_CNT ;
 int nfp_bpf_map_use_name (int) ;
 int pr_vlog (struct bpf_verifier_env*,char*,unsigned int,...) ;

__attribute__((used)) static int
nfp_bpf_map_mark_used_one(struct bpf_verifier_env *env,
     struct nfp_bpf_map *nfp_map,
     unsigned int off, enum nfp_bpf_map_use use)
{
 if (nfp_map->use_map[off / 4].type != NFP_MAP_UNUSED &&
     nfp_map->use_map[off / 4].type != use) {
  pr_vlog(env, "map value use type conflict %s vs %s off: %u\n",
   nfp_bpf_map_use_name(nfp_map->use_map[off / 4].type),
   nfp_bpf_map_use_name(use), off);
  return -EOPNOTSUPP;
 }

 if (nfp_map->use_map[off / 4].non_zero_update &&
     use == NFP_MAP_USE_ATOMIC_CNT) {
  pr_vlog(env, "atomic counter in map value may already be initialized to non-zero value off: %u\n",
   off);
  return -EOPNOTSUPP;
 }

 nfp_map->use_map[off / 4].type = use;

 return 0;
}
