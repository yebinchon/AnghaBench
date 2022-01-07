
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_prog {TYPE_1__* subprog; } ;
struct nfp_insn_meta {size_t subprog_idx; } ;
struct TYPE_2__ {scalar_t__ needs_reg_push; } ;


 int BR_OFF_RELO ;
 int BR_UNC ;
 int RELO_BR_GO_CALL_POP_REGS ;
 int emit_br_relo (struct nfp_prog*,int ,int ,int,int ) ;
 int emit_rtn (struct nfp_prog*,int ,int ) ;
 int reg_lm (int ,int ) ;
 int ret_reg (struct nfp_prog*) ;
 int wrp_mov (struct nfp_prog*,int ,int ) ;

__attribute__((used)) static int
nfp_subprog_epilogue(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
 if (nfp_prog->subprog[meta->subprog_idx].needs_reg_push) {





  emit_br_relo(nfp_prog, BR_UNC, BR_OFF_RELO, 1,
        RELO_BR_GO_CALL_POP_REGS);

  wrp_mov(nfp_prog, ret_reg(nfp_prog), reg_lm(0, 0));
 } else {

  wrp_mov(nfp_prog, ret_reg(nfp_prog), reg_lm(0, 0));



  emit_rtn(nfp_prog, ret_reg(nfp_prog), 0);
 }

 return 0;
}
