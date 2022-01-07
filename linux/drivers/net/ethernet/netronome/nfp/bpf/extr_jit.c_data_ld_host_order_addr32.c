
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int swreg ;
struct nfp_prog {int dummy; } ;
struct nfp_insn_meta {int dummy; } ;


 int CMD_MODE_32b ;
 int data_ld_host_order (struct nfp_prog*,struct nfp_insn_meta*,int ,int ,int ,int ,int ) ;
 int reg_a (int ) ;

__attribute__((used)) static int
data_ld_host_order_addr32(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta,
     u8 src_gpr, swreg offset, u8 dst_gpr, u8 size)
{
 return data_ld_host_order(nfp_prog, meta, dst_gpr, reg_a(src_gpr),
      offset, size, CMD_MODE_32b);
}
