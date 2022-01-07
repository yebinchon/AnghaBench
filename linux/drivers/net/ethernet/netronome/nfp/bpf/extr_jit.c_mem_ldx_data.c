
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int swreg ;
struct nfp_prog {int dummy; } ;
struct TYPE_2__ {int src_reg; int dst_reg; int off; } ;
struct nfp_insn_meta {TYPE_1__ insn; } ;


 int data_ld_host_order_addr32 (struct nfp_prog*,struct nfp_insn_meta*,int,int ,int,unsigned int) ;
 int imm_b (struct nfp_prog*) ;
 int re_load_imm_any (struct nfp_prog*,int ,int ) ;

__attribute__((used)) static int
mem_ldx_data(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta,
      unsigned int size)
{
 swreg tmp_reg;

 tmp_reg = re_load_imm_any(nfp_prog, meta->insn.off, imm_b(nfp_prog));

 return data_ld_host_order_addr32(nfp_prog, meta, meta->insn.src_reg * 2,
      tmp_reg, meta->insn.dst_reg * 2, size);
}
