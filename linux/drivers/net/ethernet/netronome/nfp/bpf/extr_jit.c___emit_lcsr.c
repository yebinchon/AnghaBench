
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct nfp_prog {int dummy; } ;


 int FIELD_PREP (int ,int) ;
 int OP_LCSR_ADDR ;
 int OP_LCSR_A_SRC ;
 int OP_LCSR_BASE ;
 int OP_LCSR_B_SRC ;
 int OP_LCSR_DST_LMEXTN ;
 int OP_LCSR_SRC_LMEXTN ;
 int OP_LCSR_WRITE ;
 int nfp_prog_push (struct nfp_prog*,int) ;

__attribute__((used)) static void
__emit_lcsr(struct nfp_prog *nfp_prog, u16 areg, u16 breg, bool wr, u16 addr,
     bool dst_lmextn, bool src_lmextn)
{
 u64 insn;

 insn = OP_LCSR_BASE |
  FIELD_PREP(OP_LCSR_A_SRC, areg) |
  FIELD_PREP(OP_LCSR_B_SRC, breg) |
  FIELD_PREP(OP_LCSR_WRITE, wr) |
  FIELD_PREP(OP_LCSR_ADDR, addr / 4) |
  FIELD_PREP(OP_LCSR_SRC_LMEXTN, src_lmextn) |
  FIELD_PREP(OP_LCSR_DST_LMEXTN, dst_lmextn);

 nfp_prog_push(nfp_prog, insn);
}
