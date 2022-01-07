
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_prog {int dummy; } ;
struct bpf_insn {int dst_reg; int src_reg; int off; } ;
struct nfp_insn_meta {struct bpf_insn insn; } ;


 int ALU_OP_OR ;
 int ALU_OP_XOR ;
 int BR_BEQ ;
 int emit_alu (struct nfp_prog*,int ,int ,int ,int ) ;
 int emit_br (struct nfp_prog*,int ,int ,int ) ;
 int imm_a (struct nfp_prog*) ;
 int imm_b (struct nfp_prog*) ;
 scalar_t__ is_mbpf_jmp64 (struct nfp_insn_meta*) ;
 int reg_a (int) ;
 int reg_b (int) ;
 int reg_none () ;

__attribute__((used)) static int jeq_reg(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
 const struct bpf_insn *insn = &meta->insn;

 emit_alu(nfp_prog, imm_a(nfp_prog), reg_a(insn->dst_reg * 2),
   ALU_OP_XOR, reg_b(insn->src_reg * 2));
 if (is_mbpf_jmp64(meta)) {
  emit_alu(nfp_prog, imm_b(nfp_prog),
    reg_a(insn->dst_reg * 2 + 1), ALU_OP_XOR,
    reg_b(insn->src_reg * 2 + 1));
  emit_alu(nfp_prog, reg_none(), imm_a(nfp_prog), ALU_OP_OR,
    imm_b(nfp_prog));
 }
 emit_br(nfp_prog, BR_BEQ, insn->off, 0);

 return 0;
}
