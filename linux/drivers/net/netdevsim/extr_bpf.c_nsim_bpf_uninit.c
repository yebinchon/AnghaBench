
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int prog; } ;
struct TYPE_4__ {int prog; } ;
struct netdevsim {int netdev; TYPE_3__* nsim_dev; int bpf_offloaded; TYPE_2__ xdp_hw; TYPE_1__ xdp; } ;
struct TYPE_6__ {int bpf_dev; } ;


 int WARN_ON (int ) ;
 int bpf_offload_dev_netdev_unregister (int ,int ) ;

void nsim_bpf_uninit(struct netdevsim *ns)
{
 WARN_ON(ns->xdp.prog);
 WARN_ON(ns->xdp_hw.prog);
 WARN_ON(ns->bpf_offloaded);
 bpf_offload_dev_netdev_unregister(ns->nsim_dev->bpf_dev, ns->netdev);
}
