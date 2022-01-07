
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bnx2x {int dummy; } ;


 int BNX2X_ERR (char*) ;
 int BP_PORT (struct bnx2x*) ;
 int EFAULT ;
 int NIG_REG_P0_LLH_PTP_HOST_BUF_SEQID ;
 int NIG_REG_P0_LLH_PTP_PARAM_MASK ;
 int NIG_REG_P0_LLH_PTP_RULE_MASK ;
 int NIG_REG_P0_LLH_PTP_TO_HOST ;
 int NIG_REG_P0_PTP_EN ;
 int NIG_REG_P0_TLLH_PTP_BUF_SEQID ;
 int NIG_REG_P0_TLLH_PTP_PARAM_MASK ;
 int NIG_REG_P0_TLLH_PTP_RULE_MASK ;
 int NIG_REG_P1_LLH_PTP_HOST_BUF_SEQID ;
 int NIG_REG_P1_LLH_PTP_PARAM_MASK ;
 int NIG_REG_P1_LLH_PTP_RULE_MASK ;
 int NIG_REG_P1_LLH_PTP_TO_HOST ;
 int NIG_REG_P1_PTP_EN ;
 int NIG_REG_P1_TLLH_PTP_BUF_SEQID ;
 int NIG_REG_P1_TLLH_PTP_PARAM_MASK ;
 int NIG_REG_P1_TLLH_PTP_RULE_MASK ;
 scalar_t__ NIG_REG_TIMESYNC_GEN_REG ;
 int REG_WR (struct bnx2x*,int ,int) ;
 int REG_WR_DMAE (struct bnx2x*,scalar_t__,scalar_t__*,int) ;
 int bnx2x_send_reset_timesync_ramrod (struct bnx2x*) ;
 scalar_t__ tsgen_ctrl ;

__attribute__((used)) static int bnx2x_configure_ptp(struct bnx2x *bp)
{
 int rc, port = BP_PORT(bp);
 u32 wb_data[2];


 REG_WR(bp, port ? NIG_REG_P1_LLH_PTP_PARAM_MASK :
        NIG_REG_P0_LLH_PTP_PARAM_MASK, 0x7FF);
 REG_WR(bp, port ? NIG_REG_P1_LLH_PTP_RULE_MASK :
        NIG_REG_P0_LLH_PTP_RULE_MASK, 0x3FFF);
 REG_WR(bp, port ? NIG_REG_P1_TLLH_PTP_PARAM_MASK :
        NIG_REG_P0_TLLH_PTP_PARAM_MASK, 0x7FF);
 REG_WR(bp, port ? NIG_REG_P1_TLLH_PTP_RULE_MASK :
        NIG_REG_P0_TLLH_PTP_RULE_MASK, 0x3FFF);


 REG_WR(bp, port ? NIG_REG_P1_LLH_PTP_TO_HOST :
        NIG_REG_P0_LLH_PTP_TO_HOST, 0x0);


 REG_WR(bp, port ? NIG_REG_P1_PTP_EN :
        NIG_REG_P0_PTP_EN, 0x3F);


 wb_data[0] = 0;
 wb_data[1] = 0;
 REG_WR_DMAE(bp, NIG_REG_TIMESYNC_GEN_REG + tsgen_ctrl, wb_data, 2);


 rc = bnx2x_send_reset_timesync_ramrod(bp);
 if (rc) {
  BNX2X_ERR("Failed to reset PHC drift register\n");
  return -EFAULT;
 }


 REG_WR(bp, port ? NIG_REG_P1_LLH_PTP_HOST_BUF_SEQID :
        NIG_REG_P0_LLH_PTP_HOST_BUF_SEQID, 0x10000);
 REG_WR(bp, port ? NIG_REG_P1_TLLH_PTP_BUF_SEQID :
        NIG_REG_P0_TLLH_PTP_BUF_SEQID, 0x10000);

 return 0;
}
