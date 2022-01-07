
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct nfp_prog {int dummy; } ;
typedef enum shf_sc { ____Placeholder_shf_sc } shf_sc ;


 int FIELD_PREP (int ,int) ;
 int OP_LDF_A_SRC ;
 int OP_LDF_BASE ;
 int OP_LDF_BMASK ;
 int OP_LDF_B_SRC ;
 int OP_LDF_DST_LMEXTN ;
 int OP_LDF_I8 ;
 int OP_LDF_SC ;
 int OP_LDF_SHF ;
 int OP_LDF_SRC_LMEXTN ;
 int OP_LDF_SW ;
 int OP_LDF_WR_AB ;
 int OP_LDF_ZF ;
 int nfp_prog_push (struct nfp_prog*,int) ;

__attribute__((used)) static void
__emit_ld_field(struct nfp_prog *nfp_prog, enum shf_sc sc,
  u8 areg, u8 bmask, u8 breg, u8 shift, bool imm8,
  bool zero, bool swap, bool wr_both,
  bool dst_lmextn, bool src_lmextn)
{
 u64 insn;

 insn = OP_LDF_BASE |
  FIELD_PREP(OP_LDF_A_SRC, areg) |
  FIELD_PREP(OP_LDF_SC, sc) |
  FIELD_PREP(OP_LDF_B_SRC, breg) |
  FIELD_PREP(OP_LDF_I8, imm8) |
  FIELD_PREP(OP_LDF_SW, swap) |
  FIELD_PREP(OP_LDF_ZF, zero) |
  FIELD_PREP(OP_LDF_BMASK, bmask) |
  FIELD_PREP(OP_LDF_SHF, shift) |
  FIELD_PREP(OP_LDF_WR_AB, wr_both) |
  FIELD_PREP(OP_LDF_SRC_LMEXTN, src_lmextn) |
  FIELD_PREP(OP_LDF_DST_LMEXTN, dst_lmextn);

 nfp_prog_push(nfp_prog, insn);
}
