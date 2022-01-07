
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int swreg ;
struct nfp_prog {int dummy; } ;


 int CMD_CTX_SWAP ;
 int CMD_MODE_32b ;
 int CMD_TGT_WRITE8_SWAP ;
 int emit_cmd (struct nfp_prog*,int ,int ,int ,int ,int ,int,int ) ;
 int reg_a (int) ;
 int reg_xfer (int) ;
 int wrp_immed (struct nfp_prog*,int ,int) ;

__attribute__((used)) static int
data_st_host_order(struct nfp_prog *nfp_prog, u8 dst_gpr, swreg offset,
     u64 imm, u8 size)
{
 wrp_immed(nfp_prog, reg_xfer(0), imm);
 if (size == 8)
  wrp_immed(nfp_prog, reg_xfer(1), imm >> 32);

 emit_cmd(nfp_prog, CMD_TGT_WRITE8_SWAP, CMD_MODE_32b, 0,
   reg_a(dst_gpr), offset, size - 1, CMD_CTX_SWAP);

 return 0;
}
