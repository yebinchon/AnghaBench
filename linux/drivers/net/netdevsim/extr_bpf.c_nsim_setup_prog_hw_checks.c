
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nsim_bpf_bound_prog {int state; } ;
struct netdevsim {int netdev; } ;
struct netdev_bpf {int extack; TYPE_3__* prog; } ;
struct TYPE_6__ {TYPE_2__* aux; } ;
struct TYPE_5__ {TYPE_1__* offload; } ;
struct TYPE_4__ {struct nsim_bpf_bound_prog* dev_priv; } ;


 int EINVAL ;
 int NSIM_EA (int ,char*) ;
 scalar_t__ WARN_ON (int ) ;
 int bpf_offload_dev_match (TYPE_3__*,int ) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int
nsim_setup_prog_hw_checks(struct netdevsim *ns, struct netdev_bpf *bpf)
{
 struct nsim_bpf_bound_prog *state;

 if (!bpf->prog)
  return 0;

 if (!bpf->prog->aux->offload) {
  NSIM_EA(bpf->extack, "xdpoffload of non-bound program");
  return -EINVAL;
 }
 if (!bpf_offload_dev_match(bpf->prog, ns->netdev)) {
  NSIM_EA(bpf->extack, "program bound to different dev");
  return -EINVAL;
 }

 state = bpf->prog->aux->offload->dev_priv;
 if (WARN_ON(strcmp(state->state, "xlated"))) {
  NSIM_EA(bpf->extack, "offloading program in bad state");
  return -EINVAL;
 }
 return 0;
}
