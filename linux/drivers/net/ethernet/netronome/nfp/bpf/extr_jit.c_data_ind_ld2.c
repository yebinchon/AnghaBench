
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_prog {int dummy; } ;
struct TYPE_2__ {int src_reg; int imm; } ;
struct nfp_insn_meta {TYPE_1__ insn; } ;


 int construct_data_ind_ld (struct nfp_prog*,struct nfp_insn_meta*,int ,int,int) ;

__attribute__((used)) static int data_ind_ld2(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
 return construct_data_ind_ld(nfp_prog, meta, meta->insn.imm,
         meta->insn.src_reg * 2, 2);
}
