
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct nsim_bpf_bound_map {int mutex; TYPE_2__* entry; } ;
struct TYPE_3__ {int value_size; int key_size; } ;
struct bpf_offloaded_map {TYPE_1__ map; struct nsim_bpf_bound_map* dev_priv; } ;
struct TYPE_4__ {int value; int key; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 scalar_t__ BPF_EXIST ;
 scalar_t__ BPF_NOEXIST ;
 int E2BIG ;
 int EEXIST ;
 int memcpy (int ,void*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nsim_map_alloc_elem (struct bpf_offloaded_map*,int) ;
 int nsim_map_key_find (struct bpf_offloaded_map*,void*) ;

__attribute__((used)) static int
nsim_map_update_elem(struct bpf_offloaded_map *offmap,
       void *key, void *value, u64 flags)
{
 struct nsim_bpf_bound_map *nmap = offmap->dev_priv;
 int idx, err = 0;

 mutex_lock(&nmap->mutex);

 idx = nsim_map_key_find(offmap, key);
 if (idx < 0 && flags == BPF_EXIST) {
  err = idx;
  goto exit_unlock;
 }
 if (idx >= 0 && flags == BPF_NOEXIST) {
  err = -EEXIST;
  goto exit_unlock;
 }

 if (idx < 0) {
  for (idx = 0; idx < ARRAY_SIZE(nmap->entry); idx++)
   if (!nmap->entry[idx].key)
    break;
  if (idx == ARRAY_SIZE(nmap->entry)) {
   err = -E2BIG;
   goto exit_unlock;
  }

  err = nsim_map_alloc_elem(offmap, idx);
  if (err)
   goto exit_unlock;
 }

 memcpy(nmap->entry[idx].key, key, offmap->map.key_size);
 memcpy(nmap->entry[idx].value, value, offmap->map.value_size);
exit_unlock:
 mutex_unlock(&nmap->mutex);

 return err;
}
