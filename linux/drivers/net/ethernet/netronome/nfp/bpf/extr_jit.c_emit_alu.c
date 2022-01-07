
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swreg ;
struct nfp_prog {int error; } ;
struct nfp_insn_ur_regs {int src_lmextn; int dst_lmextn; int wr_both; int swap; int breg; int areg; int dst_ab; int dst; } ;
typedef enum alu_op { ____Placeholder_alu_op } alu_op ;


 int __emit_alu (struct nfp_prog*,int ,int ,int ,int,int ,int ,int ,int ,int ) ;
 int swreg_to_unrestricted (int ,int ,int ,struct nfp_insn_ur_regs*) ;

__attribute__((used)) static void
emit_alu(struct nfp_prog *nfp_prog, swreg dst,
  swreg lreg, enum alu_op op, swreg rreg)
{
 struct nfp_insn_ur_regs reg;
 int err;

 err = swreg_to_unrestricted(dst, lreg, rreg, &reg);
 if (err) {
  nfp_prog->error = err;
  return;
 }

 __emit_alu(nfp_prog, reg.dst, reg.dst_ab,
     reg.areg, op, reg.breg, reg.swap, reg.wr_both,
     reg.dst_lmextn, reg.src_lmextn);
}
