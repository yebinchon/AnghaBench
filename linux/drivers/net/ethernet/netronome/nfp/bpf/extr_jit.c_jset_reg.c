
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_prog {int dummy; } ;
struct nfp_insn_meta {int dummy; } ;


 int ALU_OP_AND ;
 int BR_BNE ;
 int wrp_test_reg (struct nfp_prog*,struct nfp_insn_meta*,int ,int ) ;

__attribute__((used)) static int jset_reg(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
 return wrp_test_reg(nfp_prog, meta, ALU_OP_AND, BR_BNE);
}
