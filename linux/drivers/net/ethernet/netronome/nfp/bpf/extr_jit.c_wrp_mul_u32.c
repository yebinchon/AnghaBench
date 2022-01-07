
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swreg ;
struct nfp_prog {int dummy; } ;


 int MUL_LAST ;
 int MUL_LAST_2 ;
 int MUL_STEP_1 ;
 int MUL_STEP_2 ;
 int MUL_STEP_3 ;
 int MUL_STEP_4 ;
 int MUL_STEP_NONE ;
 int MUL_TYPE_START ;
 int MUL_TYPE_STEP_32x32 ;
 int emit_mul (struct nfp_prog*,int ,int ,int ,int ) ;
 int reg_none () ;
 int wrp_immed (struct nfp_prog*,int ,int ) ;

__attribute__((used)) static void
wrp_mul_u32(struct nfp_prog *nfp_prog, swreg dst_hi, swreg dst_lo, swreg lreg,
     swreg rreg, bool gen_high_half)
{
 emit_mul(nfp_prog, lreg, MUL_TYPE_START, MUL_STEP_NONE, rreg);
 emit_mul(nfp_prog, lreg, MUL_TYPE_STEP_32x32, MUL_STEP_1, rreg);
 emit_mul(nfp_prog, lreg, MUL_TYPE_STEP_32x32, MUL_STEP_2, rreg);
 emit_mul(nfp_prog, lreg, MUL_TYPE_STEP_32x32, MUL_STEP_3, rreg);
 emit_mul(nfp_prog, lreg, MUL_TYPE_STEP_32x32, MUL_STEP_4, rreg);
 emit_mul(nfp_prog, dst_lo, MUL_TYPE_STEP_32x32, MUL_LAST, reg_none());
 if (gen_high_half)
  emit_mul(nfp_prog, dst_hi, MUL_TYPE_STEP_32x32, MUL_LAST_2,
    reg_none());
 else
  wrp_immed(nfp_prog, dst_hi, 0);
}
