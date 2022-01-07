
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned int u64 ;
typedef int swreg ;
struct nfp_prog {int dummy; } ;
struct bpf_insn {unsigned int imm; int dst_reg; int off; } ;
struct nfp_insn_meta {struct bpf_insn insn; } ;


 int ALU_OP_AND ;
 int ALU_OP_OR ;
 int BR_BNE ;
 int emit_alu (struct nfp_prog*,int ,int ,int ,int ) ;
 int emit_br (struct nfp_prog*,int ,int ,int ) ;
 int imm_b (struct nfp_prog*) ;
 scalar_t__ is_mbpf_jmp64 (struct nfp_insn_meta*) ;
 int reg_a (int) ;
 int reg_none () ;
 int ur_load_imm_any (struct nfp_prog*,unsigned int,int ) ;

__attribute__((used)) static int jset_imm(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
 const struct bpf_insn *insn = &meta->insn;
 u64 imm = insn->imm;
 u8 dst_gpr = insn->dst_reg * 2;
 swreg tmp_reg;

 tmp_reg = ur_load_imm_any(nfp_prog, imm & ~0U, imm_b(nfp_prog));
 emit_alu(nfp_prog, imm_b(nfp_prog),
   reg_a(dst_gpr), ALU_OP_AND, tmp_reg);



 if (is_mbpf_jmp64(meta) && imm >> 32) {
  emit_alu(nfp_prog, reg_none(),
    reg_a(dst_gpr + 1), ALU_OP_OR, imm_b(nfp_prog));
 }
 emit_br(nfp_prog, BR_BNE, insn->off, 0);

 return 0;
}
