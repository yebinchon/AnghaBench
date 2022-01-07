
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int swreg ;
struct nfp_prog {int dummy; } ;


 scalar_t__ FIELD_FIT (int ,int ) ;
 int RE_REG_IMM_MAX ;
 int reg_imm (int ) ;
 int wrp_immed (struct nfp_prog*,int ,int ) ;

__attribute__((used)) static swreg re_load_imm_any(struct nfp_prog *nfp_prog, u32 imm, swreg tmp_reg)
{
 if (FIELD_FIT(RE_REG_IMM_MAX, imm))
  return reg_imm(imm);

 wrp_immed(nfp_prog, tmp_reg, imm);
 return tmp_reg;
}
