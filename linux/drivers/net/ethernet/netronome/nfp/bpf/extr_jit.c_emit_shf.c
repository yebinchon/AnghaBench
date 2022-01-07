
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int swreg ;
struct nfp_prog {int error; } ;
struct nfp_insn_re_regs {int src_lmextn; int dst_lmextn; int wr_both; int swap; int i8; int breg; int areg; int dst_ab; int dst; } ;
typedef enum shf_sc { ____Placeholder_shf_sc } shf_sc ;
typedef enum shf_op { ____Placeholder_shf_op } shf_op ;


 int __emit_shf (struct nfp_prog*,int ,int ,int,int ,int ,int,int ,int ,int ,int ,int ,int ) ;
 int swreg_to_restricted (int ,int ,int ,struct nfp_insn_re_regs*,int) ;

__attribute__((used)) static void
emit_shf(struct nfp_prog *nfp_prog, swreg dst,
  swreg lreg, enum shf_op op, swreg rreg, enum shf_sc sc, u8 shift)
{
 struct nfp_insn_re_regs reg;
 int err;

 err = swreg_to_restricted(dst, lreg, rreg, &reg, 1);
 if (err) {
  nfp_prog->error = err;
  return;
 }

 __emit_shf(nfp_prog, reg.dst, reg.dst_ab, sc, shift,
     reg.areg, op, reg.breg, reg.i8, reg.swap, reg.wr_both,
     reg.dst_lmextn, reg.src_lmextn);
}
