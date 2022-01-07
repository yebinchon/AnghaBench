
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef int swreg ;
struct nfp_prog {int error; int prog_len; int * prog; } ;
struct nfp_insn_re_regs {int src_lmextn; int breg; int areg; } ;
typedef enum nfp_relo_type { ____Placeholder_nfp_relo_type } nfp_relo_type ;


 int FIELD_PREP (int ,int) ;
 int OP_RELO_TYPE ;
 int __emit_br_bit (struct nfp_prog*,int ,int ,int ,int,int,int ) ;
 int reg_imm (int) ;
 int reg_none () ;
 int swreg_to_restricted (int ,int ,int ,struct nfp_insn_re_regs*,int) ;

__attribute__((used)) static void
emit_br_bit_relo(struct nfp_prog *nfp_prog, swreg src, u8 bit, u16 addr,
   u8 defer, bool set, enum nfp_relo_type relo)
{
 struct nfp_insn_re_regs reg;
 int err;





 bit += 1;

 err = swreg_to_restricted(reg_none(), src, reg_imm(bit), &reg, 0);
 if (err) {
  nfp_prog->error = err;
  return;
 }

 __emit_br_bit(nfp_prog, reg.areg, reg.breg, addr, defer, set,
        reg.src_lmextn);

 nfp_prog->prog[nfp_prog->prog_len - 1] |=
  FIELD_PREP(OP_RELO_TYPE, relo);
}
