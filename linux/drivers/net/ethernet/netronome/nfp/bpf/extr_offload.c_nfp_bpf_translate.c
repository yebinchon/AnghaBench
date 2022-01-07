
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct nfp_prog {unsigned int __prog_alloc_len; int prog_len; int bpf; scalar_t__ prog; } ;
struct nfp_net {int dummy; } ;
struct bpf_prog {TYPE_2__* aux; } ;
struct TYPE_4__ {TYPE_1__* offload; } ;
struct TYPE_3__ {int jited_len; scalar_t__ jited_image; scalar_t__ opt_failed; struct nfp_prog* dev_priv; int netdev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NFP_NET_CFG_BPF_MAX_LEN ;
 scalar_t__ kvmalloc (unsigned int,int ) ;
 struct nfp_net* netdev_priv (int ) ;
 int nfp_bpf_jit (struct nfp_prog*) ;
 int nfp_map_ptrs_record (int ,struct nfp_prog*,struct bpf_prog*) ;
 unsigned int nn_readw (struct nfp_net*,int ) ;

__attribute__((used)) static int nfp_bpf_translate(struct bpf_prog *prog)
{
 struct nfp_net *nn = netdev_priv(prog->aux->offload->netdev);
 struct nfp_prog *nfp_prog = prog->aux->offload->dev_priv;
 unsigned int max_instr;
 int err;


 if (prog->aux->offload->opt_failed)
  return -EINVAL;

 max_instr = nn_readw(nn, NFP_NET_CFG_BPF_MAX_LEN);
 nfp_prog->__prog_alloc_len = max_instr * sizeof(u64);

 nfp_prog->prog = kvmalloc(nfp_prog->__prog_alloc_len, GFP_KERNEL);
 if (!nfp_prog->prog)
  return -ENOMEM;

 err = nfp_bpf_jit(nfp_prog);
 if (err)
  return err;

 prog->aux->offload->jited_len = nfp_prog->prog_len * sizeof(u64);
 prog->aux->offload->jited_image = nfp_prog->prog;

 return nfp_map_ptrs_record(nfp_prog->bpf, nfp_prog, prog);
}
