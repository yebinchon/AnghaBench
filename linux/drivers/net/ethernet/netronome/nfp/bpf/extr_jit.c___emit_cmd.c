
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct nfp_prog {int dummy; } ;
typedef enum cmd_tgt_map { ____Placeholder_cmd_tgt_map } cmd_tgt_map ;
typedef enum cmd_ctx_swap { ____Placeholder_cmd_ctx_swap } cmd_ctx_swap ;
struct TYPE_2__ {int token; int tgt_cmd; } ;


 int CMD_CTX_NO_SWAP ;
 int FIELD_PREP (int ,int) ;
 int OP_CMD_A_SRC ;
 int OP_CMD_B_SRC ;
 int OP_CMD_CNT ;
 int OP_CMD_CTX ;
 int OP_CMD_INDIR ;
 int OP_CMD_MODE ;
 int OP_CMD_SIG ;
 int OP_CMD_TGT_CMD ;
 int OP_CMD_TOKEN ;
 int OP_CMD_XFER ;
 TYPE_1__* cmd_tgt_act ;
 int nfp_prog_push (struct nfp_prog*,int) ;

__attribute__((used)) static void
__emit_cmd(struct nfp_prog *nfp_prog, enum cmd_tgt_map op,
    u8 mode, u8 xfer, u8 areg, u8 breg, u8 size, enum cmd_ctx_swap ctx,
    bool indir)
{
 u64 insn;

 insn = FIELD_PREP(OP_CMD_A_SRC, areg) |
  FIELD_PREP(OP_CMD_CTX, ctx) |
  FIELD_PREP(OP_CMD_B_SRC, breg) |
  FIELD_PREP(OP_CMD_TOKEN, cmd_tgt_act[op].token) |
  FIELD_PREP(OP_CMD_XFER, xfer) |
  FIELD_PREP(OP_CMD_CNT, size) |
  FIELD_PREP(OP_CMD_SIG, ctx != CMD_CTX_NO_SWAP) |
  FIELD_PREP(OP_CMD_TGT_CMD, cmd_tgt_act[op].tgt_cmd) |
  FIELD_PREP(OP_CMD_INDIR, indir) |
  FIELD_PREP(OP_CMD_MODE, mode);

 nfp_prog_push(nfp_prog, insn);
}
