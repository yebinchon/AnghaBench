
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nfp_prog {int dummy; } ;


 int SHF_OP_NONE ;
 int SHF_SC_L_SHF ;
 int SHF_SC_R_DSHF ;
 int emit_shf (struct nfp_prog*,int ,int ,int ,int ,int ,int) ;
 int reg_a (int) ;
 int reg_b (int) ;
 int reg_both (int) ;
 int reg_none () ;
 int wrp_immed (struct nfp_prog*,int ,int ) ;
 int wrp_reg_mov (struct nfp_prog*,int,int) ;

__attribute__((used)) static int __shl_imm64(struct nfp_prog *nfp_prog, u8 dst, u8 shift_amt)
{
 if (!shift_amt)
  return 0;

 if (shift_amt < 32) {
  emit_shf(nfp_prog, reg_both(dst + 1), reg_a(dst + 1),
    SHF_OP_NONE, reg_b(dst), SHF_SC_R_DSHF,
    32 - shift_amt);
  emit_shf(nfp_prog, reg_both(dst), reg_none(), SHF_OP_NONE,
    reg_b(dst), SHF_SC_L_SHF, shift_amt);
 } else if (shift_amt == 32) {
  wrp_reg_mov(nfp_prog, dst + 1, dst);
  wrp_immed(nfp_prog, reg_both(dst), 0);
 } else if (shift_amt > 32) {
  emit_shf(nfp_prog, reg_both(dst + 1), reg_none(), SHF_OP_NONE,
    reg_b(dst), SHF_SC_L_SHF, shift_amt - 32);
  wrp_immed(nfp_prog, reg_both(dst), 0);
 }

 return 0;
}
