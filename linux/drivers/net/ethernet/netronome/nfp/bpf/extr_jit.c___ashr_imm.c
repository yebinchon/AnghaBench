
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct nfp_prog {int dummy; } ;
struct nfp_insn_meta {int dummy; } ;


 int ALU_OP_OR ;
 int SHF_OP_ASHR ;
 int SHF_SC_R_SHF ;
 int emit_alu (struct nfp_prog*,int ,int ,int ,int ) ;
 int emit_shf (struct nfp_prog*,int ,int ,int ,int ,int ,scalar_t__) ;
 int reg_a (scalar_t__) ;
 int reg_b (scalar_t__) ;
 int reg_both (scalar_t__) ;
 int reg_imm (int ) ;
 int reg_none () ;
 int wrp_zext (struct nfp_prog*,struct nfp_insn_meta*,scalar_t__) ;

__attribute__((used)) static int
__ashr_imm(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta, u8 dst,
    u8 shift_amt)
{
 if (shift_amt) {

  emit_alu(nfp_prog, reg_none(), reg_a(dst), ALU_OP_OR,
    reg_imm(0));
  emit_shf(nfp_prog, reg_both(dst), reg_none(), SHF_OP_ASHR,
    reg_b(dst), SHF_SC_R_SHF, shift_amt);
 }
 wrp_zext(nfp_prog, meta, dst);

 return 0;
}
