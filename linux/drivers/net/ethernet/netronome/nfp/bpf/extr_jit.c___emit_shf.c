
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct nfp_prog {int error; } ;
typedef enum shf_sc { ____Placeholder_shf_sc } shf_sc ;
typedef enum shf_op { ____Placeholder_shf_op } shf_op ;
typedef enum alu_dst_ab { ____Placeholder_alu_dst_ab } alu_dst_ab ;


 int EFAULT ;
 int FIELD_FIT (int ,int) ;
 int FIELD_PREP (int ,int) ;
 int OP_SHF_A_SRC ;
 int OP_SHF_BASE ;
 int OP_SHF_B_SRC ;
 int OP_SHF_DST ;
 int OP_SHF_DST_AB ;
 int OP_SHF_DST_LMEXTN ;
 int OP_SHF_I8 ;
 int OP_SHF_OP ;
 int OP_SHF_SC ;
 int OP_SHF_SHIFT ;
 int OP_SHF_SRC_LMEXTN ;
 int OP_SHF_SW ;
 int OP_SHF_WR_AB ;
 int SHF_SC_L_SHF ;
 int nfp_prog_push (struct nfp_prog*,int) ;

__attribute__((used)) static void
__emit_shf(struct nfp_prog *nfp_prog, u16 dst, enum alu_dst_ab dst_ab,
    enum shf_sc sc, u8 shift,
    u16 areg, enum shf_op op, u16 breg, bool i8, bool sw, bool wr_both,
    bool dst_lmextn, bool src_lmextn)
{
 u64 insn;

 if (!FIELD_FIT(OP_SHF_SHIFT, shift)) {
  nfp_prog->error = -EFAULT;
  return;
 }
 if (sc == SHF_SC_L_SHF && shift)
  shift = 32 - shift;

 insn = OP_SHF_BASE |
  FIELD_PREP(OP_SHF_A_SRC, areg) |
  FIELD_PREP(OP_SHF_SC, sc) |
  FIELD_PREP(OP_SHF_B_SRC, breg) |
  FIELD_PREP(OP_SHF_I8, i8) |
  FIELD_PREP(OP_SHF_SW, sw) |
  FIELD_PREP(OP_SHF_DST, dst) |
  FIELD_PREP(OP_SHF_SHIFT, shift) |
  FIELD_PREP(OP_SHF_OP, op) |
  FIELD_PREP(OP_SHF_DST_AB, dst_ab) |
  FIELD_PREP(OP_SHF_WR_AB, wr_both) |
  FIELD_PREP(OP_SHF_SRC_LMEXTN, src_lmextn) |
  FIELD_PREP(OP_SHF_DST_LMEXTN, dst_lmextn);

 nfp_prog_push(nfp_prog, insn);
}
