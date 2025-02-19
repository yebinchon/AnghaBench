
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct nfp_prog {int insns; struct nfp_insn_meta* verifier_meta; } ;
struct nfp_insn_meta {int flags; int l; } ;
struct bpf_verifier_env {struct bpf_insn_aux_data* insn_aux_data; TYPE_3__* prog; } ;
struct bpf_insn_aux_data {int orig_idx; } ;
struct TYPE_6__ {TYPE_1__* aux; } ;
struct TYPE_5__ {struct nfp_prog* dev_priv; } ;
struct TYPE_4__ {TYPE_2__* offload; } ;


 int EINVAL ;
 int FLAG_INSN_SKIP_VERIFIER_OPT ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int l ;
 struct nfp_insn_meta* list_next_entry (struct nfp_insn_meta*,int ) ;
 struct nfp_insn_meta* nfp_bpf_goto_meta (struct nfp_prog*,struct nfp_insn_meta*,int ) ;

int nfp_bpf_opt_remove_insns(struct bpf_verifier_env *env, u32 off, u32 cnt)
{
 struct nfp_prog *nfp_prog = env->prog->aux->offload->dev_priv;
 struct bpf_insn_aux_data *aux_data = env->insn_aux_data;
 struct nfp_insn_meta *meta = nfp_prog->verifier_meta;
 unsigned int i;

 meta = nfp_bpf_goto_meta(nfp_prog, meta, aux_data[off].orig_idx);

 for (i = 0; i < cnt; i++) {
  if (WARN_ON_ONCE(&meta->l == &nfp_prog->insns))
   return -EINVAL;


  if (meta->flags & FLAG_INSN_SKIP_VERIFIER_OPT)
   i--;

  meta->flags |= FLAG_INSN_SKIP_VERIFIER_OPT;
  meta = list_next_entry(meta, l);
 }

 return 0;
}
