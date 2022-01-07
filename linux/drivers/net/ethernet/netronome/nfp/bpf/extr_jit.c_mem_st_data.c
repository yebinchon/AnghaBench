
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int swreg ;
struct nfp_prog {int dummy; } ;
struct TYPE_2__ {int dst_reg; int off; int imm; } ;
struct nfp_insn_meta {TYPE_1__ insn; } ;


 int data_st_host_order (struct nfp_prog*,int,int ,int ,unsigned int) ;
 int imm_b (struct nfp_prog*) ;
 int re_load_imm_any (struct nfp_prog*,int ,int ) ;

__attribute__((used)) static int
mem_st_data(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta,
     unsigned int size)
{
 u64 imm = meta->insn.imm;
 swreg off_reg;

 off_reg = re_load_imm_any(nfp_prog, meta->insn.off, imm_b(nfp_prog));

 return data_st_host_order(nfp_prog, meta->insn.dst_reg * 2, off_reg,
      imm, size);
}
