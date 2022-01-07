
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int swreg ;
struct nfp_prog {int dummy; } ;
struct nfp_insn_meta {int dummy; } ;


 int CMD_MODE_40b_BA ;
 int addr40_offset (struct nfp_prog*,int ,int ,int *,int *) ;
 int data_ld_host_order (struct nfp_prog*,struct nfp_insn_meta*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int
data_ld_host_order_addr40(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta,
     u8 src_gpr, swreg offset, u8 dst_gpr, u8 size)
{
 swreg rega, regb;

 addr40_offset(nfp_prog, src_gpr, offset, &rega, &regb);

 return data_ld_host_order(nfp_prog, meta, dst_gpr, rega, regb,
      size, CMD_MODE_40b_BA);
}
