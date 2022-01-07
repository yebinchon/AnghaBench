
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_prog {int dummy; } ;
struct bpf_insn {int dst_reg; int imm; } ;
struct nfp_insn_meta {struct bpf_insn insn; } ;


 int reg_both (int) ;
 int wrp_immed (struct nfp_prog*,int ,int ) ;

__attribute__((used)) static int mov_imm(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
 const struct bpf_insn *insn = &meta->insn;

 wrp_immed(nfp_prog, reg_both(insn->dst_reg * 2), insn->imm);
 wrp_immed(nfp_prog, reg_both(insn->dst_reg * 2 + 1), 0);

 return 0;
}
