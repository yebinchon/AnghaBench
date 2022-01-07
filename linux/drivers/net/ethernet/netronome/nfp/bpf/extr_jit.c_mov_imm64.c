
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u64 ;
struct nfp_prog {int dummy; } ;
struct TYPE_2__ {unsigned int imm; int dst_reg; } ;
struct nfp_insn_meta {TYPE_1__ insn; } ;


 int reg_both (int) ;
 int wrp_immed (struct nfp_prog*,int ,unsigned int) ;

__attribute__((used)) static int mov_imm64(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
 u64 imm = meta->insn.imm;

 wrp_immed(nfp_prog, reg_both(meta->insn.dst_reg * 2), imm & ~0U);
 wrp_immed(nfp_prog, reg_both(meta->insn.dst_reg * 2 + 1), imm >> 32);

 return 0;
}
