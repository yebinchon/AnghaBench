
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int swreg ;
struct nfp_prog {int error; } ;
struct nfp_insn_re_regs {int src_lmextn; int dst_lmextn; int wr_both; int swap; int i8; int breg; int areg; } ;
typedef enum shf_sc { ____Placeholder_shf_sc } shf_sc ;


 int __emit_ld_field (struct nfp_prog*,int,int ,int ,int ,int ,int ,int,int ,int ,int ,int ) ;
 int swreg_to_restricted (int ,int ,int ,struct nfp_insn_re_regs*,int) ;

__attribute__((used)) static void
emit_ld_field_any(struct nfp_prog *nfp_prog, swreg dst, u8 bmask, swreg src,
    enum shf_sc sc, u8 shift, bool zero)
{
 struct nfp_insn_re_regs reg;
 int err;


 err = swreg_to_restricted(dst, dst, src, &reg, 1);
 if (err) {
  nfp_prog->error = err;
  return;
 }

 __emit_ld_field(nfp_prog, sc, reg.areg, bmask, reg.breg, shift,
   reg.i8, zero, reg.swap, reg.wr_both,
   reg.dst_lmextn, reg.src_lmextn);
}
