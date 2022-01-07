
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int swreg ;
struct nfp_prog {int dummy; } ;
typedef enum cmd_tgt_map { ____Placeholder_cmd_tgt_map } cmd_tgt_map ;
typedef enum cmd_ctx_swap { ____Placeholder_cmd_ctx_swap } cmd_ctx_swap ;


 int emit_cmd_any (struct nfp_prog*,int,int ,int ,int ,int ,int ,int,int) ;

__attribute__((used)) static void
emit_cmd(struct nfp_prog *nfp_prog, enum cmd_tgt_map op, u8 mode, u8 xfer,
  swreg lreg, swreg rreg, u8 size, enum cmd_ctx_swap ctx)
{
 emit_cmd_any(nfp_prog, op, mode, xfer, lreg, rreg, size, ctx, 0);
}
