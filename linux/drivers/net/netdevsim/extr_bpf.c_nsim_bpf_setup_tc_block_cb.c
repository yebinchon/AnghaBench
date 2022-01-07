
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ protocol; int extack; } ;
struct tc_cls_bpf_offload {scalar_t__ command; struct bpf_prog* prog; TYPE_2__ common; struct bpf_prog* oldprog; } ;
struct netdevsim {struct bpf_prog* bpf_offloaded; int bpf_tc_non_bound_accept; int bpf_tc_accept; int netdev; } ;
struct bpf_prog {TYPE_1__* aux; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;
struct TYPE_3__ {int offload; } ;


 int EBUSY ;
 int EOPNOTSUPP ;
 int ETH_P_ALL ;
 int NSIM_EA (int ,char*) ;
 scalar_t__ TC_CLSBPF_OFFLOAD ;
 int TC_SETUP_CLSBPF ;
 scalar_t__ htons (int ) ;
 int nsim_bpf_offload (struct netdevsim*,struct bpf_prog*,struct bpf_prog*) ;
 int tc_cls_can_offload_and_chain0 (int ,TYPE_2__*) ;

int nsim_bpf_setup_tc_block_cb(enum tc_setup_type type,
          void *type_data, void *cb_priv)
{
 struct tc_cls_bpf_offload *cls_bpf = type_data;
 struct bpf_prog *prog = cls_bpf->prog;
 struct netdevsim *ns = cb_priv;
 struct bpf_prog *oldprog;

 if (type != TC_SETUP_CLSBPF) {
  NSIM_EA(cls_bpf->common.extack,
   "only offload of BPF classifiers supported");
  return -EOPNOTSUPP;
 }

 if (!tc_cls_can_offload_and_chain0(ns->netdev, &cls_bpf->common))
  return -EOPNOTSUPP;

 if (cls_bpf->common.protocol != htons(ETH_P_ALL)) {
  NSIM_EA(cls_bpf->common.extack,
   "only ETH_P_ALL supported as filter protocol");
  return -EOPNOTSUPP;
 }

 if (!ns->bpf_tc_accept) {
  NSIM_EA(cls_bpf->common.extack,
   "netdevsim configured to reject BPF TC offload");
  return -EOPNOTSUPP;
 }

 if (prog && !prog->aux->offload && !ns->bpf_tc_non_bound_accept) {
  NSIM_EA(cls_bpf->common.extack,
   "netdevsim configured to reject unbound programs");
  return -EOPNOTSUPP;
 }

 if (cls_bpf->command != TC_CLSBPF_OFFLOAD)
  return -EOPNOTSUPP;

 oldprog = cls_bpf->oldprog;


 if (ns->bpf_offloaded != oldprog) {
  oldprog = ((void*)0);
  if (!cls_bpf->prog)
   return 0;
  if (ns->bpf_offloaded) {
   NSIM_EA(cls_bpf->common.extack,
    "driver and netdev offload states mismatch");
   return -EBUSY;
  }
 }

 return nsim_bpf_offload(ns, cls_bpf->prog, oldprog);
}
