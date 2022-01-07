
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nfp_prog {int subprog_cnt; unsigned int stack_size; TYPE_4__* subprog; } ;
struct nfp_net {int dummy; } ;
struct bpf_verifier_env {int subprog_cnt; int insn_aux_data; TYPE_3__* prog; struct bpf_subprog_info* subprog_info; } ;
struct bpf_subprog_info {int stack_depth; } ;
struct TYPE_8__ {int stack_depth; scalar_t__ needs_reg_push; } ;
struct TYPE_7__ {TYPE_2__* aux; } ;
struct TYPE_6__ {TYPE_1__* offload; } ;
struct TYPE_5__ {int netdev; struct nfp_prog* dev_priv; } ;


 int BPF_REG_SIZE ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int NFP_NET_CFG_BPF_STACK_SZ ;
 scalar_t__ REG_WIDTH ;
 TYPE_4__* kcalloc (int,int,int ) ;
 struct nfp_net* netdev_priv (int ) ;
 int nfp_assign_subprog_idx_and_regs (struct bpf_verifier_env*,struct nfp_prog*) ;
 unsigned int nfp_bpf_get_stack_usage (struct nfp_prog*) ;
 int nfp_bpf_insn_flag_zext (struct nfp_prog*,int ) ;
 int nn_readb (struct nfp_net*,int ) ;
 int pr_vlog (struct bpf_verifier_env*,char*,unsigned int,unsigned int) ;

int nfp_bpf_finalize(struct bpf_verifier_env *env)
{
 struct bpf_subprog_info *info;
 struct nfp_prog *nfp_prog;
 unsigned int max_stack;
 struct nfp_net *nn;
 int i;

 nfp_prog = env->prog->aux->offload->dev_priv;
 nfp_prog->subprog_cnt = env->subprog_cnt;
 nfp_prog->subprog = kcalloc(nfp_prog->subprog_cnt,
        sizeof(nfp_prog->subprog[0]), GFP_KERNEL);
 if (!nfp_prog->subprog)
  return -ENOMEM;

 nfp_assign_subprog_idx_and_regs(env, nfp_prog);

 info = env->subprog_info;
 for (i = 0; i < nfp_prog->subprog_cnt; i++) {
  nfp_prog->subprog[i].stack_depth = info[i].stack_depth;

  if (i == 0)
   continue;


  nfp_prog->subprog[i].stack_depth += REG_WIDTH;

  if (nfp_prog->subprog[i].needs_reg_push)
   nfp_prog->subprog[i].stack_depth += BPF_REG_SIZE * 4;
 }

 nn = netdev_priv(env->prog->aux->offload->netdev);
 max_stack = nn_readb(nn, NFP_NET_CFG_BPF_STACK_SZ) * 64;
 nfp_prog->stack_size = nfp_bpf_get_stack_usage(nfp_prog);
 if (nfp_prog->stack_size > max_stack) {
  pr_vlog(env, "stack too large: program %dB > FW stack %dB\n",
   nfp_prog->stack_size, max_stack);
  return -EOPNOTSUPP;
 }

 nfp_bpf_insn_flag_zext(nfp_prog, env->insn_aux_data);
 return 0;
}
