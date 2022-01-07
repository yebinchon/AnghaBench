
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsim_dev {int bpf_dev; int bpf_bound_maps; int bpf_bound_progs; } ;


 int WARN_ON (int) ;
 int bpf_offload_dev_destroy (int ) ;
 int list_empty (int *) ;

void nsim_bpf_dev_exit(struct nsim_dev *nsim_dev)
{
 WARN_ON(!list_empty(&nsim_dev->bpf_bound_progs));
 WARN_ON(!list_empty(&nsim_dev->bpf_bound_maps));
 bpf_offload_dev_destroy(nsim_dev->bpf_dev);
}
