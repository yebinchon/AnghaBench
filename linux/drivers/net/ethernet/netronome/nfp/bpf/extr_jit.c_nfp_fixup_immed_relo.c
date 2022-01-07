
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfp_prog {int * prog; } ;
struct nfp_insn_meta {int off; } ;


 int EINVAL ;
 scalar_t__ immed_get_value (int ) ;
 int immed_set_value (int *,int ) ;
 int pr_err (char*) ;

__attribute__((used)) static int
nfp_fixup_immed_relo(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta,
       struct nfp_insn_meta *jmp_dst, u32 br_idx)
{
 if (immed_get_value(nfp_prog->prog[br_idx + 1])) {
  pr_err("BUG: failed to fix up callee register saving\n");
  return -EINVAL;
 }

 immed_set_value(&nfp_prog->prog[br_idx + 1], jmp_dst->off);

 return 0;
}
