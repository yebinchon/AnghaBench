
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct nfp_prog {int dummy; } ;


 int FIELD_PREP (int ,int) ;
 int OP_BR_ALU_A_SRC ;
 int OP_BR_ALU_BASE ;
 int OP_BR_ALU_B_SRC ;
 int OP_BR_ALU_DEFBR ;
 int OP_BR_ALU_DST_LMEXTN ;
 int OP_BR_ALU_IMM_HI ;
 int OP_BR_ALU_SRC_LMEXTN ;
 int nfp_prog_push (struct nfp_prog*,int) ;

__attribute__((used)) static void
__emit_br_alu(struct nfp_prog *nfp_prog, u16 areg, u16 breg, u16 imm_hi,
       u8 defer, bool dst_lmextn, bool src_lmextn)
{
 u64 insn;

 insn = OP_BR_ALU_BASE |
  FIELD_PREP(OP_BR_ALU_A_SRC, areg) |
  FIELD_PREP(OP_BR_ALU_B_SRC, breg) |
  FIELD_PREP(OP_BR_ALU_DEFBR, defer) |
  FIELD_PREP(OP_BR_ALU_IMM_HI, imm_hi) |
  FIELD_PREP(OP_BR_ALU_SRC_LMEXTN, src_lmextn) |
  FIELD_PREP(OP_BR_ALU_DST_LMEXTN, dst_lmextn);

 nfp_prog_push(nfp_prog, insn);
}
