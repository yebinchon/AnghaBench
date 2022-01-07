
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct nfp_prog {int dummy; } ;
typedef enum immed_width { ____Placeholder_immed_width } immed_width ;
typedef enum immed_shift { ____Placeholder_immed_shift } immed_shift ;


 int FIELD_PREP (int ,int) ;
 int OP_IMMED_A_SRC ;
 int OP_IMMED_BASE ;
 int OP_IMMED_B_SRC ;
 int OP_IMMED_DST_LMEXTN ;
 int OP_IMMED_IMM ;
 int OP_IMMED_INV ;
 int OP_IMMED_SHIFT ;
 int OP_IMMED_SRC_LMEXTN ;
 int OP_IMMED_WIDTH ;
 int OP_IMMED_WR_AB ;
 int nfp_prog_push (struct nfp_prog*,int) ;

__attribute__((used)) static void
__emit_immed(struct nfp_prog *nfp_prog, u16 areg, u16 breg, u16 imm_hi,
      enum immed_width width, bool invert,
      enum immed_shift shift, bool wr_both,
      bool dst_lmextn, bool src_lmextn)
{
 u64 insn;

 insn = OP_IMMED_BASE |
  FIELD_PREP(OP_IMMED_A_SRC, areg) |
  FIELD_PREP(OP_IMMED_B_SRC, breg) |
  FIELD_PREP(OP_IMMED_IMM, imm_hi) |
  FIELD_PREP(OP_IMMED_WIDTH, width) |
  FIELD_PREP(OP_IMMED_INV, invert) |
  FIELD_PREP(OP_IMMED_SHIFT, shift) |
  FIELD_PREP(OP_IMMED_WR_AB, wr_both) |
  FIELD_PREP(OP_IMMED_SRC_LMEXTN, src_lmextn) |
  FIELD_PREP(OP_IMMED_DST_LMEXTN, dst_lmextn);

 nfp_prog_push(nfp_prog, insn);
}
