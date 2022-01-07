
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsim_map_entry {scalar_t__ key; } ;
struct bpf_map {int key_size; } ;


 int memcmp (void*,scalar_t__,int ) ;

__attribute__((used)) static bool
nsim_map_key_match(struct bpf_map *map, struct nsim_map_entry *e, void *key)
{
 return e->key && !memcmp(key, e->key, map->key_size);
}
