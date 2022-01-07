
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_prog {int dummy; } ;
struct TYPE_2__ {int imm; } ;
struct nfp_insn_meta {TYPE_1__ insn; } ;


 int ALU_OP_OR ;
 int wrp_alu64_imm (struct nfp_prog*,struct nfp_insn_meta*,int ,int) ;

__attribute__((used)) static int or_imm64(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
 return wrp_alu64_imm(nfp_prog, meta, ALU_OP_OR, !meta->insn.imm);
}
