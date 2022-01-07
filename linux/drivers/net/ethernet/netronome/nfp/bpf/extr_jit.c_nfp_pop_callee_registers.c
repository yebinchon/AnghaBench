
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct nfp_prog {int tgt_call_pop_regs; } ;


 scalar_t__ BPF_REG_0 ;
 scalar_t__ BPF_REG_6 ;
 scalar_t__ BPF_REG_8 ;
 scalar_t__ BPF_REG_9 ;
 int emit_rtn (struct nfp_prog*,int ,int) ;
 int nfp_prog_current_offset (struct nfp_prog*) ;
 int reg_both (scalar_t__) ;
 int reg_lm (int ,scalar_t__) ;
 int ret_reg (struct nfp_prog*) ;
 int wrp_mov (struct nfp_prog*,int ,int ) ;

__attribute__((used)) static void nfp_pop_callee_registers(struct nfp_prog *nfp_prog)
{
 u8 reg;




 nfp_prog->tgt_call_pop_regs = nfp_prog_current_offset(nfp_prog);
 for (reg = BPF_REG_6; reg <= BPF_REG_9; reg++) {
  u8 adj = (reg - BPF_REG_0) * 2;
  u8 idx = (reg - BPF_REG_6) * 2;




  wrp_mov(nfp_prog, reg_both(adj), reg_lm(0, 1 + idx));

  if (reg == BPF_REG_8)

   emit_rtn(nfp_prog, ret_reg(nfp_prog), 3);

  wrp_mov(nfp_prog, reg_both(adj + 1), reg_lm(0, 1 + idx + 1));
 }
}
