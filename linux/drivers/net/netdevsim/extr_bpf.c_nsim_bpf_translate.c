
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nsim_bpf_bound_prog {char* state; } ;
struct bpf_prog {TYPE_2__* aux; } ;
struct TYPE_4__ {TYPE_1__* offload; } ;
struct TYPE_3__ {struct nsim_bpf_bound_prog* dev_priv; } ;



__attribute__((used)) static int nsim_bpf_translate(struct bpf_prog *prog)
{
 struct nsim_bpf_bound_prog *state = prog->aux->offload->dev_priv;

 state->state = "xlated";
 return 0;
}
