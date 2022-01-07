
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsim_bpf_bound_map {int * entry; } ;
struct bpf_offloaded_map {int map; struct nsim_bpf_bound_map* dev_priv; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int ENOENT ;
 scalar_t__ nsim_map_key_match (int *,int *,void*) ;

__attribute__((used)) static int nsim_map_key_find(struct bpf_offloaded_map *offmap, void *key)
{
 struct nsim_bpf_bound_map *nmap = offmap->dev_priv;
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(nmap->entry); i++)
  if (nsim_map_key_match(&offmap->map, &nmap->entry[i], key))
   return i;

 return -ENOENT;
}
