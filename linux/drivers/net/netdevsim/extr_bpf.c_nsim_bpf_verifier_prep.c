
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nsim_dev {int bpf_bind_accept; } ;
struct bpf_prog {TYPE_2__* aux; } ;
struct TYPE_4__ {TYPE_1__* offload; } ;
struct TYPE_3__ {int offdev; } ;


 int EOPNOTSUPP ;
 struct nsim_dev* bpf_offload_dev_priv (int ) ;
 int nsim_bpf_create_prog (struct nsim_dev*,struct bpf_prog*) ;

__attribute__((used)) static int nsim_bpf_verifier_prep(struct bpf_prog *prog)
{
 struct nsim_dev *nsim_dev =
   bpf_offload_dev_priv(prog->aux->offload->offdev);

 if (!nsim_dev->bpf_bind_accept)
  return -EOPNOTSUPP;

 return nsim_bpf_create_prog(nsim_dev, prog);
}
