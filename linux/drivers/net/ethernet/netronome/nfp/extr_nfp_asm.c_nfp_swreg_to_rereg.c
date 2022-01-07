
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int swreg ;


 int FIELD_PREP (int ,int) ;
 int NN_LM_MOD_NONE ;
 int REG_NONE ;
 int RE_REG_IMM_encode (int) ;
 int RE_REG_LM ;
 int RE_REG_LM_IDX ;
 int RE_REG_LM_IDX_MAX ;
 int RE_REG_NO_DST ;
 int RE_REG_XFR ;
 int pr_err (char*,...) ;
 int swreg_lm_idx (int ) ;
 int swreg_lm_mode (int ) ;
 int swreg_type (int ) ;
 int swreg_value (int ) ;

__attribute__((used)) static u16 nfp_swreg_to_rereg(swreg reg, bool is_dst, bool has_imm8, bool *i8)
{
 u16 val = swreg_value(reg);
 bool lm_id;

 switch (swreg_type(reg)) {
 case 135:
 case 134:
 case 133:
  return val;
 case 128:
  return RE_REG_XFR | val;
 case 131:
  lm_id = swreg_lm_idx(reg);

  if (swreg_lm_mode(reg) != NN_LM_MOD_NONE) {
   pr_err("bad LM mode for restricted operands %d\n",
          swreg_lm_mode(reg));
   return 0;
  }

  if (val & ~RE_REG_LM_IDX_MAX) {
   pr_err("LM offset too large\n");
   return 0;
  }

  return RE_REG_LM | FIELD_PREP(RE_REG_LM_IDX, lm_id) | val;
 case 132:
  if (val & ~(0x7f | has_imm8 << 7)) {
   pr_err("immediate too large\n");
   return 0;
  }
  *i8 = val & 0x80;
  return RE_REG_IMM_encode(val & 0x7f);
 case 129:
  return is_dst ? RE_REG_NO_DST : REG_NONE;
 case 130:
  pr_err("NNRs used with restricted encoding\n");
  return 0;
 }

 pr_err("unrecognized reg encoding\n");
 return 0;
}
