
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_prog {unsigned int n_insns; int insns; } ;
struct bpf_insn {int dummy; } ;
struct nfp_insn_meta {unsigned int n; int l; void* umin_dst; void* umin_src; struct bpf_insn insn; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* U64_MAX ;
 scalar_t__ is_mbpf_alu (struct nfp_insn_meta*) ;
 struct nfp_insn_meta* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int nfp_bpf_jit_prepare (struct nfp_prog*) ;

__attribute__((used)) static int
nfp_prog_prepare(struct nfp_prog *nfp_prog, const struct bpf_insn *prog,
   unsigned int cnt)
{
 struct nfp_insn_meta *meta;
 unsigned int i;

 for (i = 0; i < cnt; i++) {
  meta = kzalloc(sizeof(*meta), GFP_KERNEL);
  if (!meta)
   return -ENOMEM;

  meta->insn = prog[i];
  meta->n = i;
  if (is_mbpf_alu(meta)) {
   meta->umin_src = U64_MAX;
   meta->umin_dst = U64_MAX;
  }

  list_add_tail(&meta->l, &nfp_prog->insns);
 }
 nfp_prog->n_insns = cnt;

 nfp_bpf_jit_prepare(nfp_prog);

 return 0;
}
