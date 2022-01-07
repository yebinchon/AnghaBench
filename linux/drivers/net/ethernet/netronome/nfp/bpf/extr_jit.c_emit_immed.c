
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int swreg ;
struct nfp_prog {int error; } ;
struct nfp_insn_ur_regs {int src_lmextn; int dst_lmextn; int wr_both; int breg; int areg; int dst; } ;
typedef enum immed_width { ____Placeholder_immed_width } immed_width ;
typedef enum immed_shift { ____Placeholder_immed_shift } immed_shift ;


 int EFAULT ;
 scalar_t__ NN_REG_IMM ;
 scalar_t__ NN_REG_NONE ;
 int __emit_immed (struct nfp_prog*,int ,int ,int,int,int,int,int ,int ,int ) ;
 int reg_imm (int) ;
 int swreg_to_unrestricted (int ,int ,int ,struct nfp_insn_ur_regs*) ;
 scalar_t__ swreg_type (int ) ;

__attribute__((used)) static void
emit_immed(struct nfp_prog *nfp_prog, swreg dst, u16 imm,
    enum immed_width width, bool invert, enum immed_shift shift)
{
 struct nfp_insn_ur_regs reg;
 int err;

 if (swreg_type(dst) == NN_REG_IMM) {
  nfp_prog->error = -EFAULT;
  return;
 }

 err = swreg_to_unrestricted(dst, dst, reg_imm(imm & 0xff), &reg);
 if (err) {
  nfp_prog->error = err;
  return;
 }


 __emit_immed(nfp_prog,
       swreg_type(dst) == NN_REG_NONE ? reg.dst : reg.areg,
       reg.breg, imm >> 8, width, invert, shift,
       reg.wr_both, reg.dst_lmextn, reg.src_lmextn);
}
