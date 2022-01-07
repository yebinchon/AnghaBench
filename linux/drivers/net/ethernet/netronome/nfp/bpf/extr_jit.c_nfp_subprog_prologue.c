
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_prog {int dummy; } ;
struct nfp_insn_meta {int dummy; } ;


 int reg_lm (int ,int ) ;
 int ret_reg (struct nfp_prog*) ;
 int wrp_mov (struct nfp_prog*,int ,int ) ;

__attribute__((used)) static void
nfp_subprog_prologue(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{

 wrp_mov(nfp_prog, reg_lm(0, 0), ret_reg(nfp_prog));
}
