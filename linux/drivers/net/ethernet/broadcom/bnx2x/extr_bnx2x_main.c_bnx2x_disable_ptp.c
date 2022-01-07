
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int dummy; } ;


 int BP_PORT (struct bnx2x*) ;
 int NIG_REG_P0_LLH_PTP_PARAM_MASK ;
 int NIG_REG_P0_LLH_PTP_RULE_MASK ;
 int NIG_REG_P0_LLH_PTP_TO_HOST ;
 int NIG_REG_P0_PTP_EN ;
 int NIG_REG_P0_TLLH_PTP_PARAM_MASK ;
 int NIG_REG_P0_TLLH_PTP_RULE_MASK ;
 int NIG_REG_P1_LLH_PTP_PARAM_MASK ;
 int NIG_REG_P1_LLH_PTP_RULE_MASK ;
 int NIG_REG_P1_LLH_PTP_TO_HOST ;
 int NIG_REG_P1_PTP_EN ;
 int NIG_REG_P1_TLLH_PTP_PARAM_MASK ;
 int NIG_REG_P1_TLLH_PTP_RULE_MASK ;
 int REG_WR (struct bnx2x*,int ,int) ;

__attribute__((used)) static void bnx2x_disable_ptp(struct bnx2x *bp)
{
 int port = BP_PORT(bp);


 REG_WR(bp, port ? NIG_REG_P1_LLH_PTP_TO_HOST :
        NIG_REG_P0_LLH_PTP_TO_HOST, 0x0);


 REG_WR(bp, port ? NIG_REG_P1_LLH_PTP_PARAM_MASK :
        NIG_REG_P0_LLH_PTP_PARAM_MASK, 0x7FF);
 REG_WR(bp, port ? NIG_REG_P1_LLH_PTP_RULE_MASK :
        NIG_REG_P0_LLH_PTP_RULE_MASK, 0x3FFF);
 REG_WR(bp, port ? NIG_REG_P1_TLLH_PTP_PARAM_MASK :
        NIG_REG_P0_TLLH_PTP_PARAM_MASK, 0x7FF);
 REG_WR(bp, port ? NIG_REG_P1_TLLH_PTP_RULE_MASK :
        NIG_REG_P0_TLLH_PTP_RULE_MASK, 0x3FFF);


 REG_WR(bp, port ? NIG_REG_P1_PTP_EN :
        NIG_REG_P0_PTP_EN, 0x0);
}
