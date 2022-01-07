
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct netdevsim {TYPE_3__* netdev; } ;
struct netdev_bpf {int extack; TYPE_2__* prog; } ;
struct TYPE_6__ {scalar_t__ mtu; } ;
struct TYPE_5__ {TYPE_1__* aux; } ;
struct TYPE_4__ {scalar_t__ offload; } ;


 int EINVAL ;
 int NSIM_EA (int ,char*) ;
 scalar_t__ NSIM_XDP_MAX_MTU ;

__attribute__((used)) static int nsim_setup_prog_checks(struct netdevsim *ns, struct netdev_bpf *bpf)
{
 if (bpf->prog && bpf->prog->aux->offload) {
  NSIM_EA(bpf->extack, "attempt to load offloaded prog to drv");
  return -EINVAL;
 }
 if (ns->netdev->mtu > NSIM_XDP_MAX_MTU) {
  NSIM_EA(bpf->extack, "MTU too large w/ XDP enabled");
  return -EINVAL;
 }
 return 0;
}
