
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netdevsim {int bpf_offloaded_id; struct bpf_prog* bpf_offloaded; } ;
struct bpf_prog {TYPE_1__* aux; } ;
struct TYPE_2__ {int id; } ;


 int WARN (int,char*,char*) ;
 int nsim_prog_set_loaded (struct bpf_prog*,int) ;

__attribute__((used)) static int
nsim_bpf_offload(struct netdevsim *ns, struct bpf_prog *prog, bool oldprog)
{
 nsim_prog_set_loaded(ns->bpf_offloaded, 0);

 WARN(!!ns->bpf_offloaded != oldprog,
      "bad offload state, expected offload %sto be active",
      oldprog ? "" : "not ");
 ns->bpf_offloaded = prog;
 ns->bpf_offloaded_id = prog ? prog->aux->id : 0;
 nsim_prog_set_loaded(prog, 1);

 return 0;
}
