
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
typedef int swreg ;
struct nfp_prog {int dummy; } ;
struct nfp_insn_meta {int dummy; } ;


 int CMD_CTX_SWAP ;
 int CMD_MODE_32b ;
 int CMD_TGT_READ8 ;
 int SHF_OP_NONE ;
 int SHF_SC_R_SHF ;
 int emit_cmd (struct nfp_prog*,int ,int ,int ,int ,int ,int,int ) ;
 int emit_shf (struct nfp_prog*,int ,int ,int ,int ,int ,int) ;
 int max (int,int) ;
 int pptr_reg (struct nfp_prog*) ;
 int reg_both (scalar_t__) ;
 int reg_none () ;
 int reg_xfer (unsigned int) ;
 int wrp_mov (struct nfp_prog*,int ,int ) ;
 int wrp_zext (struct nfp_prog*,struct nfp_insn_meta*,scalar_t__) ;

__attribute__((used)) static int
data_ld(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta, swreg offset,
 u8 dst_gpr, int size)
{
 unsigned int i;
 u16 shift, sz;




 sz = max(size, 4);
 shift = size < 4 ? 4 - size : 0;

 emit_cmd(nfp_prog, CMD_TGT_READ8, CMD_MODE_32b, 0,
   pptr_reg(nfp_prog), offset, sz - 1, CMD_CTX_SWAP);

 i = 0;
 if (shift)
  emit_shf(nfp_prog, reg_both(dst_gpr), reg_none(), SHF_OP_NONE,
    reg_xfer(0), SHF_SC_R_SHF, shift * 8);
 else
  for (; i * 4 < size; i++)
   wrp_mov(nfp_prog, reg_both(dst_gpr + i), reg_xfer(i));

 if (i < 2)
  wrp_zext(nfp_prog, meta, dst_gpr);

 return 0;
}
