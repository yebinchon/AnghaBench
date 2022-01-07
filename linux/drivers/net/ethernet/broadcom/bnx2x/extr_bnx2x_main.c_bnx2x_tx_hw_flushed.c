
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pbf_pN_cmd_regs {int member_0; int member_3; int member_2; int member_1; } ;
struct pbf_pN_buf_regs {int member_0; int member_3; int member_2; int member_1; } ;
struct bnx2x {int dummy; } ;


 int ARRAY_SIZE (struct pbf_pN_cmd_regs*) ;
 int CHIP_IS_E3B0 (struct bnx2x*) ;
 int PBF_REG_CREDIT_LB_Q ;
 int PBF_REG_CREDIT_Q0 ;
 int PBF_REG_CREDIT_Q1 ;
 int PBF_REG_INIT_CRD_LB_Q ;
 int PBF_REG_INIT_CRD_Q0 ;
 int PBF_REG_INIT_CRD_Q1 ;
 int PBF_REG_INTERNAL_CRD_FREED_CNT_LB_Q ;
 int PBF_REG_INTERNAL_CRD_FREED_CNT_Q0 ;
 int PBF_REG_INTERNAL_CRD_FREED_CNT_Q1 ;
 int PBF_REG_P0_CREDIT ;
 int PBF_REG_P0_INIT_CRD ;
 int PBF_REG_P0_INTERNAL_CRD_FREED_CNT ;
 int PBF_REG_P0_TQ_LINES_FREED_CNT ;
 int PBF_REG_P0_TQ_OCCUPANCY ;
 int PBF_REG_P1_CREDIT ;
 int PBF_REG_P1_INIT_CRD ;
 int PBF_REG_P1_INTERNAL_CRD_FREED_CNT ;
 int PBF_REG_P1_TQ_LINES_FREED_CNT ;
 int PBF_REG_P1_TQ_OCCUPANCY ;
 int PBF_REG_P4_CREDIT ;
 int PBF_REG_P4_INIT_CRD ;
 int PBF_REG_P4_INTERNAL_CRD_FREED_CNT ;
 int PBF_REG_P4_TQ_LINES_FREED_CNT ;
 int PBF_REG_P4_TQ_OCCUPANCY ;
 int PBF_REG_TQ_LINES_FREED_CNT_LB_Q ;
 int PBF_REG_TQ_LINES_FREED_CNT_Q0 ;
 int PBF_REG_TQ_LINES_FREED_CNT_Q1 ;
 int PBF_REG_TQ_OCCUPANCY_LB_Q ;
 int PBF_REG_TQ_OCCUPANCY_Q0 ;
 int PBF_REG_TQ_OCCUPANCY_Q1 ;
 int bnx2x_pbf_pN_buf_flushed (struct bnx2x*,struct pbf_pN_cmd_regs*,int ) ;
 int bnx2x_pbf_pN_cmd_flushed (struct bnx2x*,struct pbf_pN_cmd_regs*,int ) ;

void bnx2x_tx_hw_flushed(struct bnx2x *bp, u32 poll_count)
{
 struct pbf_pN_cmd_regs cmd_regs[] = {
  {0, (CHIP_IS_E3B0(bp)) ?
   PBF_REG_TQ_OCCUPANCY_Q0 :
   PBF_REG_P0_TQ_OCCUPANCY,
      (CHIP_IS_E3B0(bp)) ?
   PBF_REG_TQ_LINES_FREED_CNT_Q0 :
   PBF_REG_P0_TQ_LINES_FREED_CNT},
  {1, (CHIP_IS_E3B0(bp)) ?
   PBF_REG_TQ_OCCUPANCY_Q1 :
   PBF_REG_P1_TQ_OCCUPANCY,
      (CHIP_IS_E3B0(bp)) ?
   PBF_REG_TQ_LINES_FREED_CNT_Q1 :
   PBF_REG_P1_TQ_LINES_FREED_CNT},
  {4, (CHIP_IS_E3B0(bp)) ?
   PBF_REG_TQ_OCCUPANCY_LB_Q :
   PBF_REG_P4_TQ_OCCUPANCY,
      (CHIP_IS_E3B0(bp)) ?
   PBF_REG_TQ_LINES_FREED_CNT_LB_Q :
   PBF_REG_P4_TQ_LINES_FREED_CNT}
 };

 struct pbf_pN_buf_regs buf_regs[] = {
  {0, (CHIP_IS_E3B0(bp)) ?
   PBF_REG_INIT_CRD_Q0 :
   PBF_REG_P0_INIT_CRD ,
      (CHIP_IS_E3B0(bp)) ?
   PBF_REG_CREDIT_Q0 :
   PBF_REG_P0_CREDIT,
      (CHIP_IS_E3B0(bp)) ?
   PBF_REG_INTERNAL_CRD_FREED_CNT_Q0 :
   PBF_REG_P0_INTERNAL_CRD_FREED_CNT},
  {1, (CHIP_IS_E3B0(bp)) ?
   PBF_REG_INIT_CRD_Q1 :
   PBF_REG_P1_INIT_CRD,
      (CHIP_IS_E3B0(bp)) ?
   PBF_REG_CREDIT_Q1 :
   PBF_REG_P1_CREDIT,
      (CHIP_IS_E3B0(bp)) ?
   PBF_REG_INTERNAL_CRD_FREED_CNT_Q1 :
   PBF_REG_P1_INTERNAL_CRD_FREED_CNT},
  {4, (CHIP_IS_E3B0(bp)) ?
   PBF_REG_INIT_CRD_LB_Q :
   PBF_REG_P4_INIT_CRD,
      (CHIP_IS_E3B0(bp)) ?
   PBF_REG_CREDIT_LB_Q :
   PBF_REG_P4_CREDIT,
      (CHIP_IS_E3B0(bp)) ?
   PBF_REG_INTERNAL_CRD_FREED_CNT_LB_Q :
   PBF_REG_P4_INTERNAL_CRD_FREED_CNT},
 };

 int i;


 for (i = 0; i < ARRAY_SIZE(cmd_regs); i++)
  bnx2x_pbf_pN_cmd_flushed(bp, &cmd_regs[i], poll_count);


 for (i = 0; i < ARRAY_SIZE(buf_regs); i++)
  bnx2x_pbf_pN_buf_flushed(bp, &buf_regs[i], poll_count);
}
