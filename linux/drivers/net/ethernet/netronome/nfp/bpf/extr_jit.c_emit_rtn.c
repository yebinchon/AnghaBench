
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int swreg ;
struct nfp_prog {int error; } ;
struct nfp_insn_ur_regs {int src_lmextn; int dst_lmextn; int breg; int areg; } ;


 int __emit_br_alu (struct nfp_prog*,int ,int ,int ,int ,int ,int ) ;
 int reg_imm (int ) ;
 int reg_none () ;
 int swreg_to_unrestricted (int ,int ,int ,struct nfp_insn_ur_regs*) ;

__attribute__((used)) static void emit_rtn(struct nfp_prog *nfp_prog, swreg base, u8 defer)
{
 struct nfp_insn_ur_regs reg;
 int err;

 err = swreg_to_unrestricted(reg_none(), base, reg_imm(0), &reg);
 if (err) {
  nfp_prog->error = err;
  return;
 }

 __emit_br_alu(nfp_prog, reg.areg, reg.breg, 0, defer, reg.dst_lmextn,
        reg.src_lmextn);
}
