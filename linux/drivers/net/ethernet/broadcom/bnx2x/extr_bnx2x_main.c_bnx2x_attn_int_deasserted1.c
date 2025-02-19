
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;


 int AEU_INPUTS_ATTN_BITS_DOORBELLQ_HW_INTERRUPT ;
 int BNX2X_ERR (char*,...) ;
 int BP_PORT (struct bnx2x*) ;
 int DORQ_REG_DORQ_INT_STS_CLR ;
 int HW_INTERRUPT_ASSERT_SET_1 ;
 int MISC_REG_AEU_ENABLE1_FUNC_0_OUT_1 ;
 int MISC_REG_AEU_ENABLE1_FUNC_1_OUT_1 ;
 int REG_RD (struct bnx2x*,int) ;
 int REG_WR (struct bnx2x*,int,int) ;
 int bnx2x_panic () ;

__attribute__((used)) static void bnx2x_attn_int_deasserted1(struct bnx2x *bp, u32 attn)
{
 u32 val;

 if (attn & AEU_INPUTS_ATTN_BITS_DOORBELLQ_HW_INTERRUPT) {

  val = REG_RD(bp, DORQ_REG_DORQ_INT_STS_CLR);
  BNX2X_ERR("DB hw attention 0x%x\n", val);

  if (val & 0x2)
   BNX2X_ERR("FATAL error from DORQ\n");
 }

 if (attn & HW_INTERRUPT_ASSERT_SET_1) {

  int port = BP_PORT(bp);
  int reg_offset;

  reg_offset = (port ? MISC_REG_AEU_ENABLE1_FUNC_1_OUT_1 :
         MISC_REG_AEU_ENABLE1_FUNC_0_OUT_1);

  val = REG_RD(bp, reg_offset);
  val &= ~(attn & HW_INTERRUPT_ASSERT_SET_1);
  REG_WR(bp, reg_offset, val);

  BNX2X_ERR("FATAL HW block attention set1 0x%x\n",
     (u32)(attn & HW_INTERRUPT_ASSERT_SET_1));
  bnx2x_panic();
 }
}
