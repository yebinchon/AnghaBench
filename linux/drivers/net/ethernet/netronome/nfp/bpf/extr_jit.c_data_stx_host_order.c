
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
typedef int swreg ;
struct nfp_prog {int dummy; } ;


 int CMD_CTX_SWAP ;
 int CMD_MODE_32b ;
 int CMD_TGT_WRITE8_SWAP ;
 int emit_cmd (struct nfp_prog*,int ,int ,int ,int ,int ,unsigned int,int ) ;
 int reg_a (unsigned int) ;
 int reg_xfer (unsigned int) ;
 int wrp_mov (struct nfp_prog*,int ,int ) ;

__attribute__((used)) static int
data_stx_host_order(struct nfp_prog *nfp_prog, u8 dst_gpr, swreg offset,
      u8 src_gpr, u8 size)
{
 unsigned int i;

 for (i = 0; i * 4 < size; i++)
  wrp_mov(nfp_prog, reg_xfer(i), reg_a(src_gpr + i));

 emit_cmd(nfp_prog, CMD_TGT_WRITE8_SWAP, CMD_MODE_32b, 0,
   reg_a(dst_gpr), offset, size - 1, CMD_CTX_SWAP);

 return 0;
}
