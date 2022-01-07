
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int swreg ;
struct nfp_prog {int error; } ;
struct nfp_insn_ur_regs {int src_lmextn; int breg; int areg; } ;


 scalar_t__ NN_REG_IMM ;
 int __emit_lcsr (struct nfp_prog*,int ,int ,int,int ,int,int ) ;
 int reg_imm (int ) ;
 int reg_none () ;
 int swreg_to_unrestricted (int ,int ,int ,struct nfp_insn_ur_regs*) ;
 scalar_t__ swreg_type (int ) ;

__attribute__((used)) static void emit_csr_wr(struct nfp_prog *nfp_prog, swreg src, u16 addr)
{
 struct nfp_insn_ur_regs reg;
 int err;






 if (swreg_type(src) == NN_REG_IMM) {
  err = swreg_to_unrestricted(reg_none(), src, reg_none(), &reg);
  reg.breg = reg.areg;
 } else {
  err = swreg_to_unrestricted(reg_none(), src, reg_imm(0), &reg);
 }
 if (err) {
  nfp_prog->error = err;
  return;
 }

 __emit_lcsr(nfp_prog, reg.areg, reg.breg, 1, addr,
      0, reg.src_lmextn);
}
