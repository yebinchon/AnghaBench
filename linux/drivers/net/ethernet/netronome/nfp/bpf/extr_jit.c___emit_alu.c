
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct nfp_prog {int dummy; } ;
typedef enum alu_op { ____Placeholder_alu_op } alu_op ;
typedef enum alu_dst_ab { ____Placeholder_alu_dst_ab } alu_dst_ab ;


 int FIELD_PREP (int ,int) ;
 int OP_ALU_A_SRC ;
 int OP_ALU_BASE ;
 int OP_ALU_B_SRC ;
 int OP_ALU_DST ;
 int OP_ALU_DST_AB ;
 int OP_ALU_DST_LMEXTN ;
 int OP_ALU_OP ;
 int OP_ALU_SRC_LMEXTN ;
 int OP_ALU_SW ;
 int OP_ALU_WR_AB ;
 int nfp_prog_push (struct nfp_prog*,int) ;

__attribute__((used)) static void
__emit_alu(struct nfp_prog *nfp_prog, u16 dst, enum alu_dst_ab dst_ab,
    u16 areg, enum alu_op op, u16 breg, bool swap, bool wr_both,
    bool dst_lmextn, bool src_lmextn)
{
 u64 insn;

 insn = OP_ALU_BASE |
  FIELD_PREP(OP_ALU_A_SRC, areg) |
  FIELD_PREP(OP_ALU_B_SRC, breg) |
  FIELD_PREP(OP_ALU_DST, dst) |
  FIELD_PREP(OP_ALU_SW, swap) |
  FIELD_PREP(OP_ALU_OP, op) |
  FIELD_PREP(OP_ALU_DST_AB, dst_ab) |
  FIELD_PREP(OP_ALU_WR_AB, wr_both) |
  FIELD_PREP(OP_ALU_SRC_LMEXTN, src_lmextn) |
  FIELD_PREP(OP_ALU_DST_LMEXTN, dst_lmextn);

 nfp_prog_push(nfp_prog, insn);
}
