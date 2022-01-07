
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int swreg ;
struct nfp_prog {int error; } ;
struct nfp_insn_ur_regs {int src_lmextn; int dst_lmextn; int wr_both; int swap; int breg; int dst_ab; int areg; int dst; } ;
typedef enum mul_type { ____Placeholder_mul_type } mul_type ;
typedef enum mul_step { ____Placeholder_mul_step } mul_step ;


 int EINVAL ;
 int MUL_LAST ;
 int MUL_LAST_2 ;
 int MUL_STEP_NONE ;
 int MUL_TYPE_START ;
 int __emit_mul (struct nfp_prog*,int ,int ,int,int,int ,int ,int ,int ,int ) ;
 int reg_none () ;
 int swreg_to_unrestricted (int ,int ,int ,struct nfp_insn_ur_regs*) ;

__attribute__((used)) static void
emit_mul(struct nfp_prog *nfp_prog, swreg lreg, enum mul_type type,
  enum mul_step step, swreg rreg)
{
 struct nfp_insn_ur_regs reg;
 u16 areg;
 int err;

 if (type == MUL_TYPE_START && step != MUL_STEP_NONE) {
  nfp_prog->error = -EINVAL;
  return;
 }

 if (step == MUL_LAST || step == MUL_LAST_2) {



  err = swreg_to_unrestricted(lreg, reg_none(), rreg, &reg);
  areg = reg.dst;
 } else {
  err = swreg_to_unrestricted(reg_none(), lreg, rreg, &reg);
  areg = reg.areg;
 }

 if (err) {
  nfp_prog->error = err;
  return;
 }

 __emit_mul(nfp_prog, reg.dst_ab, areg, type, step, reg.breg, reg.swap,
     reg.wr_both, reg.dst_lmextn, reg.src_lmextn);
}
