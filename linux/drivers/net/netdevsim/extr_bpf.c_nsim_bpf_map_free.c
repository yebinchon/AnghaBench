
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nsim_bpf_bound_map {int mutex; int l; TYPE_1__* entry; } ;
struct bpf_offloaded_map {struct nsim_bpf_bound_map* dev_priv; } ;
struct TYPE_2__ {struct nsim_bpf_bound_map* value; struct nsim_bpf_bound_map* key; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int kfree (struct nsim_bpf_bound_map*) ;
 int list_del_init (int *) ;
 int mutex_destroy (int *) ;

__attribute__((used)) static void nsim_bpf_map_free(struct bpf_offloaded_map *offmap)
{
 struct nsim_bpf_bound_map *nmap = offmap->dev_priv;
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(nmap->entry); i++) {
  kfree(nmap->entry[i].key);
  kfree(nmap->entry[i].value);
 }
 list_del_init(&nmap->l);
 mutex_destroy(&nmap->mutex);
 kfree(nmap);
}
