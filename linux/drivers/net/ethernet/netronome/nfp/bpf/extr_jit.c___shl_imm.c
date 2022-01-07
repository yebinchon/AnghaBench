
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct nfp_prog {int dummy; } ;
struct nfp_insn_meta {int dummy; } ;


 int SHF_OP_NONE ;
 int SHF_SC_L_SHF ;
 int emit_shf (struct nfp_prog*,int ,int ,int ,int ,int ,scalar_t__) ;
 int reg_b (scalar_t__) ;
 int reg_both (scalar_t__) ;
 int reg_none () ;
 int wrp_zext (struct nfp_prog*,struct nfp_insn_meta*,scalar_t__) ;

__attribute__((used)) static int
__shl_imm(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta, u8 dst,
   u8 shift_amt)
{
 if (shift_amt)
  emit_shf(nfp_prog, reg_both(dst), reg_none(), SHF_OP_NONE,
    reg_b(dst), SHF_SC_L_SHF, shift_amt);
 wrp_zext(nfp_prog, meta, dst);
 return 0;
}
