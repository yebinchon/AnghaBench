
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int swreg ;
struct nfp_prog {int dummy; } ;
struct nfp_insn_meta {int dummy; } ;
typedef enum cmd_mode { ____Placeholder_cmd_mode } cmd_mode ;


 int CMD_CTX_SWAP ;
 int CMD_TGT_READ32_SWAP ;
 int GENMASK (int,int ) ;
 int SHF_SC_NONE ;
 int emit_cmd (struct nfp_prog*,int ,int,int ,int ,int ,int,int ) ;
 int emit_ld_field_any (struct nfp_prog*,int ,int,int ,int ,int ,int) ;
 int max (int,int) ;
 int reg_both (int) ;
 int reg_xfer (unsigned int) ;
 int wrp_mov (struct nfp_prog*,int ,int ) ;
 int wrp_zext (struct nfp_prog*,struct nfp_insn_meta*,int) ;

__attribute__((used)) static int
data_ld_host_order(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta,
     u8 dst_gpr, swreg lreg, swreg rreg, int size,
     enum cmd_mode mode)
{
 unsigned int i;
 u8 mask, sz;




 sz = max(size, 4);
 mask = size < 4 ? GENMASK(size - 1, 0) : 0;

 emit_cmd(nfp_prog, CMD_TGT_READ32_SWAP, mode, 0,
   lreg, rreg, sz / 4 - 1, CMD_CTX_SWAP);

 i = 0;
 if (mask)
  emit_ld_field_any(nfp_prog, reg_both(dst_gpr), mask,
      reg_xfer(0), SHF_SC_NONE, 0, 1);
 else
  for (; i * 4 < size; i++)
   wrp_mov(nfp_prog, reg_both(dst_gpr + i), reg_xfer(i));

 if (i < 2)
  wrp_zext(nfp_prog, meta, dst_gpr);

 return 0;
}
