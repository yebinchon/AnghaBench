
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_prog {int dummy; } ;
struct bpf_insn {int dst_reg; } ;
struct nfp_insn_meta {struct bpf_insn insn; } ;


 int ALU_OP_SUB ;
 int ALU_OP_SUB_C ;
 int emit_alu (struct nfp_prog*,int ,int ,int ,int ) ;
 int reg_b (int) ;
 int reg_both (int) ;
 int reg_imm (int ) ;

__attribute__((used)) static int neg_reg64(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
 const struct bpf_insn *insn = &meta->insn;

 emit_alu(nfp_prog, reg_both(insn->dst_reg * 2), reg_imm(0),
   ALU_OP_SUB, reg_b(insn->dst_reg * 2));
 emit_alu(nfp_prog, reg_both(insn->dst_reg * 2 + 1), reg_imm(0),
   ALU_OP_SUB_C, reg_b(insn->dst_reg * 2 + 1));

 return 0;
}
