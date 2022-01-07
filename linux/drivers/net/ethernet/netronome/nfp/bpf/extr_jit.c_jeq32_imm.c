
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swreg ;
struct nfp_prog {int dummy; } ;
struct bpf_insn {int dst_reg; int off; int imm; } ;
struct nfp_insn_meta {struct bpf_insn insn; } ;


 int ALU_OP_XOR ;
 int BR_BEQ ;
 int emit_alu (struct nfp_prog*,int ,int ,int ,int ) ;
 int emit_br (struct nfp_prog*,int ,int ,int ) ;
 int imm_b (struct nfp_prog*) ;
 int reg_a (int) ;
 int reg_none () ;
 int ur_load_imm_any (struct nfp_prog*,int ,int ) ;

__attribute__((used)) static int jeq32_imm(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
 const struct bpf_insn *insn = &meta->insn;
 swreg tmp_reg;

 tmp_reg = ur_load_imm_any(nfp_prog, insn->imm, imm_b(nfp_prog));
 emit_alu(nfp_prog, reg_none(),
   reg_a(insn->dst_reg * 2), ALU_OP_XOR, tmp_reg);
 emit_br(nfp_prog, BR_BEQ, insn->off, 0);

 return 0;
}
