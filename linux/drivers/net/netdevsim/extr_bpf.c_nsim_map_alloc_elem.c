
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nsim_bpf_bound_map {TYPE_2__* entry; } ;
struct TYPE_3__ {int value_size; int key_size; } ;
struct bpf_offloaded_map {TYPE_1__ map; struct nsim_bpf_bound_map* dev_priv; } ;
struct TYPE_4__ {int * key; void* value; } ;


 int ENOMEM ;
 int GFP_USER ;
 int kfree (int *) ;
 void* kmalloc (int ,int ) ;

__attribute__((used)) static int
nsim_map_alloc_elem(struct bpf_offloaded_map *offmap, unsigned int idx)
{
 struct nsim_bpf_bound_map *nmap = offmap->dev_priv;

 nmap->entry[idx].key = kmalloc(offmap->map.key_size, GFP_USER);
 if (!nmap->entry[idx].key)
  return -ENOMEM;
 nmap->entry[idx].value = kmalloc(offmap->map.value_size, GFP_USER);
 if (!nmap->entry[idx].value) {
  kfree(nmap->entry[idx].key);
  nmap->entry[idx].key = ((void*)0);
  return -ENOMEM;
 }

 return 0;
}
