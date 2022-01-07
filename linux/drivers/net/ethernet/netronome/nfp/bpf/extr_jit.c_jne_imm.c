
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;
typedef int swreg ;
struct nfp_prog {int dummy; } ;
struct bpf_insn {unsigned int imm; int dst_reg; int off; } ;
struct nfp_insn_meta {struct bpf_insn insn; } ;


 int ALU_OP_NONE ;
 int ALU_OP_OR ;
 int ALU_OP_XOR ;
 int BR_BNE ;
 int emit_alu (struct nfp_prog*,int ,int ,int ,int ) ;
 int emit_br (struct nfp_prog*,int ,int ,int ) ;
 int imm_b (struct nfp_prog*) ;
 int is_mbpf_jmp32 (struct nfp_insn_meta*) ;
 int reg_a (int) ;
 int reg_b (int) ;
 int reg_none () ;
 int ur_load_imm_any (struct nfp_prog*,unsigned int,int ) ;

__attribute__((used)) static int jne_imm(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
 const struct bpf_insn *insn = &meta->insn;
 u64 imm = insn->imm;
 bool is_jmp32 = is_mbpf_jmp32(meta);
 swreg tmp_reg;

 if (!imm) {
  if (is_jmp32)
   emit_alu(nfp_prog, reg_none(), reg_none(), ALU_OP_NONE,
     reg_b(insn->dst_reg * 2));
  else
   emit_alu(nfp_prog, reg_none(), reg_a(insn->dst_reg * 2),
     ALU_OP_OR, reg_b(insn->dst_reg * 2 + 1));
  emit_br(nfp_prog, BR_BNE, insn->off, 0);
  return 0;
 }

 tmp_reg = ur_load_imm_any(nfp_prog, imm & ~0U, imm_b(nfp_prog));
 emit_alu(nfp_prog, reg_none(),
   reg_a(insn->dst_reg * 2), ALU_OP_XOR, tmp_reg);
 emit_br(nfp_prog, BR_BNE, insn->off, 0);

 if (is_jmp32)
  return 0;

 tmp_reg = ur_load_imm_any(nfp_prog, imm >> 32, imm_b(nfp_prog));
 emit_alu(nfp_prog, reg_none(),
   reg_a(insn->dst_reg * 2 + 1), ALU_OP_XOR, tmp_reg);
 emit_br(nfp_prog, BR_BNE, insn->off, 0);

 return 0;
}
