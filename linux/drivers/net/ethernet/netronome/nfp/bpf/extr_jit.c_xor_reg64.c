
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_prog {int dummy; } ;
struct nfp_insn_meta {int dummy; } ;


 int ALU_OP_XOR ;
 int wrp_alu64_reg (struct nfp_prog*,struct nfp_insn_meta*,int ) ;

__attribute__((used)) static int xor_reg64(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
 return wrp_alu64_reg(nfp_prog, meta, ALU_OP_XOR);
}
