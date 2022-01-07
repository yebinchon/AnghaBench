
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_bpf_map {int l; int cache_blockers; int cache; } ;
struct nfp_app_bpf {int maps_in_use; int map_elems_in_use; } ;
struct TYPE_2__ {scalar_t__ max_entries; } ;
struct bpf_offloaded_map {TYPE_1__ map; struct nfp_bpf_map* dev_priv; } ;


 int WARN_ON_ONCE (int ) ;
 int dev_consume_skb_any (int ) ;
 int kfree (struct nfp_bpf_map*) ;
 int list_del_init (int *) ;
 int nfp_bpf_ctrl_free_map (struct nfp_app_bpf*,struct nfp_bpf_map*) ;

__attribute__((used)) static int
nfp_bpf_map_free(struct nfp_app_bpf *bpf, struct bpf_offloaded_map *offmap)
{
 struct nfp_bpf_map *nfp_map = offmap->dev_priv;

 nfp_bpf_ctrl_free_map(bpf, nfp_map);
 dev_consume_skb_any(nfp_map->cache);
 WARN_ON_ONCE(nfp_map->cache_blockers);
 list_del_init(&nfp_map->l);
 bpf->map_elems_in_use -= offmap->map.max_entries;
 bpf->maps_in_use--;
 kfree(nfp_map);

 return 0;
}
