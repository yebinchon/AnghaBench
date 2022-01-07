
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;
typedef int swreg ;
struct nfp_prog {int dummy; } ;
struct bpf_insn {unsigned int imm; int dst_reg; int off; } ;
struct nfp_insn_meta {struct bpf_insn insn; } ;


 int ALU_OP_OR ;
 int ALU_OP_XOR ;
 int BR_BEQ ;
 int emit_alu (struct nfp_prog*,int ,int ,int ,int ) ;
 int emit_br (struct nfp_prog*,int ,int ,int ) ;
 int imm_a (struct nfp_prog*) ;
 int imm_b (struct nfp_prog*) ;
 int reg_a (int) ;
 int reg_b (int) ;
 int reg_none () ;
 int ur_load_imm_any (struct nfp_prog*,unsigned int,int ) ;

__attribute__((used)) static int jeq_imm(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
 const struct bpf_insn *insn = &meta->insn;
 u64 imm = insn->imm;
 swreg or1, or2, tmp_reg;

 or1 = reg_a(insn->dst_reg * 2);
 or2 = reg_b(insn->dst_reg * 2 + 1);

 if (imm & ~0U) {
  tmp_reg = ur_load_imm_any(nfp_prog, imm & ~0U, imm_b(nfp_prog));
  emit_alu(nfp_prog, imm_a(nfp_prog),
    reg_a(insn->dst_reg * 2), ALU_OP_XOR, tmp_reg);
  or1 = imm_a(nfp_prog);
 }

 if (imm >> 32) {
  tmp_reg = ur_load_imm_any(nfp_prog, imm >> 32, imm_b(nfp_prog));
  emit_alu(nfp_prog, imm_b(nfp_prog),
    reg_a(insn->dst_reg * 2 + 1), ALU_OP_XOR, tmp_reg);
  or2 = imm_b(nfp_prog);
 }

 emit_alu(nfp_prog, reg_none(), or1, ALU_OP_OR, or2);
 emit_br(nfp_prog, BR_BEQ, insn->off, 0);

 return 0;
}
