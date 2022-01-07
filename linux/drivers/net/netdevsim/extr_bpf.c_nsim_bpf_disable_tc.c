
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdevsim {scalar_t__ bpf_offloaded; } ;


 int EBUSY ;
 int nsim_xdp_offload_active (struct netdevsim*) ;

int nsim_bpf_disable_tc(struct netdevsim *ns)
{
 if (ns->bpf_offloaded && !nsim_xdp_offload_active(ns))
  return -EBUSY;
 return 0;
}
