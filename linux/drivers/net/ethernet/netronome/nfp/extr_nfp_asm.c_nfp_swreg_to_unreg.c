
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int swreg ;


 int FIELD_PREP (int ,int) ;
 int REG_NONE ;
 int UR_REG_IMM_encode (int) ;
 int UR_REG_LM ;
 int UR_REG_LM_IDX ;
 int UR_REG_LM_IDX_MAX ;
 int UR_REG_LM_POST_MOD ;
 int UR_REG_LM_POST_MOD_DEC ;
 int UR_REG_NN ;
 int UR_REG_NO_DST ;
 int UR_REG_XFR ;
 int pr_err (char*,...) ;
 int swreg_lm_idx (int ) ;
 int swreg_lm_mode (int ) ;
 int swreg_type (int ) ;
 int swreg_value (int ) ;

__attribute__((used)) static u16 nfp_swreg_to_unreg(swreg reg, bool is_dst)
{
 bool lm_id, lm_dec = 0;
 u16 val = swreg_value(reg);

 switch (swreg_type(reg)) {
 case 135:
 case 134:
 case 133:
  return val;
 case 130:
  return UR_REG_NN | val;
 case 128:
  return UR_REG_XFR | val;
 case 131:
  lm_id = swreg_lm_idx(reg);

  switch (swreg_lm_mode(reg)) {
  case 136:
   if (val & ~UR_REG_LM_IDX_MAX) {
    pr_err("LM offset too large\n");
    return 0;
   }
   return UR_REG_LM | FIELD_PREP(UR_REG_LM_IDX, lm_id) |
    val;
  case 138:
   lm_dec = 1;

  case 137:
   if (val) {
    pr_err("LM offset in inc/dev mode\n");
    return 0;
   }
   return UR_REG_LM | UR_REG_LM_POST_MOD |
    FIELD_PREP(UR_REG_LM_IDX, lm_id) |
    FIELD_PREP(UR_REG_LM_POST_MOD_DEC, lm_dec);
  default:
   pr_err("bad LM mode for unrestricted operands %d\n",
          swreg_lm_mode(reg));
   return 0;
  }
 case 132:
  if (val & ~0xff) {
   pr_err("immediate too large\n");
   return 0;
  }
  return UR_REG_IMM_encode(val);
 case 129:
  return is_dst ? UR_REG_NO_DST : REG_NONE;
 }

 pr_err("unrecognized reg encoding %08x\n", reg);
 return 0;
}
