
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nsim_bpf_bound_map {int mutex; TYPE_1__* entry; } ;
struct TYPE_4__ {int value_size; } ;
struct bpf_offloaded_map {TYPE_2__ map; struct nsim_bpf_bound_map* dev_priv; } ;
struct TYPE_3__ {int value; } ;


 int memcpy (void*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nsim_map_key_find (struct bpf_offloaded_map*,void*) ;

__attribute__((used)) static int
nsim_map_lookup_elem(struct bpf_offloaded_map *offmap, void *key, void *value)
{
 struct nsim_bpf_bound_map *nmap = offmap->dev_priv;
 int idx;

 mutex_lock(&nmap->mutex);

 idx = nsim_map_key_find(offmap, key);
 if (idx >= 0)
  memcpy(value, nmap->entry[idx].value, offmap->map.value_size);

 mutex_unlock(&nmap->mutex);

 return idx < 0 ? idx : 0;
}
