
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nsim_bpf_bound_prog {int l; int ddir; int is_loaded; } ;
struct bpf_prog {TYPE_2__* aux; } ;
struct TYPE_4__ {TYPE_1__* offload; } ;
struct TYPE_3__ {struct nsim_bpf_bound_prog* dev_priv; } ;


 int WARN (int ,char*) ;
 int debugfs_remove_recursive (int ) ;
 int kfree (struct nsim_bpf_bound_prog*) ;
 int list_del (int *) ;

__attribute__((used)) static void nsim_bpf_destroy_prog(struct bpf_prog *prog)
{
 struct nsim_bpf_bound_prog *state;

 state = prog->aux->offload->dev_priv;
 WARN(state->is_loaded,
      "offload state destroyed while program still bound");
 debugfs_remove_recursive(state->ddir);
 list_del(&state->l);
 kfree(state);
}
