
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int swreg ;
struct nfp_prog {int dummy; } ;
typedef enum alu_op { ____Placeholder_alu_op } alu_op ;


 int ALU_OP_AND ;
 int ALU_OP_NOT ;
 int ALU_OP_OR ;
 int ALU_OP_XOR ;
 int emit_alu (struct nfp_prog*,int ,int ,int,int ) ;
 int imm_b (struct nfp_prog*) ;
 int reg_a (int ) ;
 int reg_b (int ) ;
 int reg_both (int ) ;
 int reg_none () ;
 int ur_load_imm_any (struct nfp_prog*,int ,int ) ;
 int wrp_immed (struct nfp_prog*,int ,unsigned int) ;

__attribute__((used)) static void
wrp_alu_imm(struct nfp_prog *nfp_prog, u8 dst, enum alu_op alu_op, u32 imm)
{
 swreg tmp_reg;

 if (alu_op == ALU_OP_AND) {
  if (!imm)
   wrp_immed(nfp_prog, reg_both(dst), 0);
  if (!imm || !~imm)
   return;
 }
 if (alu_op == ALU_OP_OR) {
  if (!~imm)
   wrp_immed(nfp_prog, reg_both(dst), ~0U);
  if (!imm || !~imm)
   return;
 }
 if (alu_op == ALU_OP_XOR) {
  if (!~imm)
   emit_alu(nfp_prog, reg_both(dst), reg_none(),
     ALU_OP_NOT, reg_b(dst));
  if (!imm || !~imm)
   return;
 }

 tmp_reg = ur_load_imm_any(nfp_prog, imm, imm_b(nfp_prog));
 emit_alu(nfp_prog, reg_both(dst), reg_a(dst), alu_op, tmp_reg);
}
