
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int swreg ;
struct nfp_prog {int dummy; } ;
struct TYPE_2__ {int dst_reg; int src_reg; int off; } ;
struct nfp_insn_meta {TYPE_1__ insn; } ;


 int data_stx_host_order (struct nfp_prog*,int,int ,int,unsigned int) ;
 int imm_b (struct nfp_prog*) ;
 int re_load_imm_any (struct nfp_prog*,int ,int ) ;

__attribute__((used)) static int
mem_stx_data(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta,
      unsigned int size)
{
 swreg off_reg;

 off_reg = re_load_imm_any(nfp_prog, meta->insn.off, imm_b(nfp_prog));

 return data_stx_host_order(nfp_prog, meta->insn.dst_reg * 2, off_reg,
       meta->insn.src_reg * 2, size);
}
