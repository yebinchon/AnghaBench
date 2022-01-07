
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nsim_bpf_bound_map {int mutex; TYPE_2__* entry; } ;
struct TYPE_3__ {scalar_t__ map_type; } ;
struct bpf_offloaded_map {TYPE_1__ map; struct nsim_bpf_bound_map* dev_priv; } ;
struct TYPE_4__ {int value; int key; } ;


 scalar_t__ BPF_MAP_TYPE_ARRAY ;
 int EINVAL ;
 int kfree (int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nsim_map_key_find (struct bpf_offloaded_map*,void*) ;

__attribute__((used)) static int nsim_map_delete_elem(struct bpf_offloaded_map *offmap, void *key)
{
 struct nsim_bpf_bound_map *nmap = offmap->dev_priv;
 int idx;

 if (offmap->map.map_type == BPF_MAP_TYPE_ARRAY)
  return -EINVAL;

 mutex_lock(&nmap->mutex);

 idx = nsim_map_key_find(offmap, key);
 if (idx >= 0) {
  kfree(nmap->entry[idx].key);
  kfree(nmap->entry[idx].value);
  memset(&nmap->entry[idx], 0, sizeof(nmap->entry[idx]));
 }

 mutex_unlock(&nmap->mutex);

 return idx < 0 ? idx : 0;
}
