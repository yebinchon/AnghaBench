
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nsim_bpf_bound_map {TYPE_2__* entry; int mutex; } ;
struct TYPE_3__ {int key_size; } ;
struct bpf_offloaded_map {TYPE_1__ map; struct nsim_bpf_bound_map* dev_priv; } ;
struct TYPE_4__ {scalar_t__ key; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int ENOENT ;
 int memcpy (void*,scalar_t__,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nsim_map_key_find (struct bpf_offloaded_map*,void*) ;

__attribute__((used)) static int
nsim_map_get_next_key(struct bpf_offloaded_map *offmap,
        void *key, void *next_key)
{
 struct nsim_bpf_bound_map *nmap = offmap->dev_priv;
 int idx = -ENOENT;

 mutex_lock(&nmap->mutex);

 if (key)
  idx = nsim_map_key_find(offmap, key);
 if (idx == -ENOENT)
  idx = 0;
 else
  idx++;

 for (; idx < ARRAY_SIZE(nmap->entry); idx++) {
  if (nmap->entry[idx].key) {
   memcpy(next_key, nmap->entry[idx].key,
          offmap->map.key_size);
   break;
  }
 }

 mutex_unlock(&nmap->mutex);

 if (idx == ARRAY_SIZE(nmap->entry))
  return -ENOENT;
 return 0;
}
