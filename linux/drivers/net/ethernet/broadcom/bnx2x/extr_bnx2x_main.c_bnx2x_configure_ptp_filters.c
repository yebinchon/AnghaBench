
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int tx_type; int rx_filter; int flags; int hwtstamp_ioctl_called; } ;


 int BNX2X_ERR (char*) ;
 int BNX2X_PTP_TX_ON_PARAM_MASK ;
 int BNX2X_PTP_TX_ON_RULE_MASK ;
 int BNX2X_PTP_V1_L4_PARAM_MASK ;
 int BNX2X_PTP_V1_L4_RULE_MASK ;
 int BNX2X_PTP_V2_L2_PARAM_MASK ;
 int BNX2X_PTP_V2_L2_RULE_MASK ;
 int BNX2X_PTP_V2_L4_PARAM_MASK ;
 int BNX2X_PTP_V2_L4_RULE_MASK ;
 int BNX2X_PTP_V2_PARAM_MASK ;
 int BNX2X_PTP_V2_RULE_MASK ;
 int BP_PORT (struct bnx2x*) ;
 int ERANGE ;
 int NIG_REG_P0_LLH_PTP_PARAM_MASK ;
 int NIG_REG_P0_LLH_PTP_RULE_MASK ;
 int NIG_REG_P0_LLH_PTP_TO_HOST ;
 int NIG_REG_P0_TLLH_PTP_PARAM_MASK ;
 int NIG_REG_P0_TLLH_PTP_RULE_MASK ;
 int NIG_REG_P1_LLH_PTP_PARAM_MASK ;
 int NIG_REG_P1_LLH_PTP_RULE_MASK ;
 int NIG_REG_P1_LLH_PTP_TO_HOST ;
 int NIG_REG_P1_TLLH_PTP_PARAM_MASK ;
 int NIG_REG_P1_TLLH_PTP_RULE_MASK ;
 int REG_WR (struct bnx2x*,int ,int) ;
 int TX_TIMESTAMPING_EN ;
 int bnx2x_enable_ptp_packets (struct bnx2x*) ;

int bnx2x_configure_ptp_filters(struct bnx2x *bp)
{
 int port = BP_PORT(bp);
 u32 param, rule;
 int rc;

 if (!bp->hwtstamp_ioctl_called)
  return 0;

 param = port ? NIG_REG_P1_TLLH_PTP_PARAM_MASK :
  NIG_REG_P0_TLLH_PTP_PARAM_MASK;
 rule = port ? NIG_REG_P1_TLLH_PTP_RULE_MASK :
  NIG_REG_P0_TLLH_PTP_RULE_MASK;
 switch (bp->tx_type) {
 case 129:
  bp->flags |= TX_TIMESTAMPING_EN;
  REG_WR(bp, param, BNX2X_PTP_TX_ON_PARAM_MASK);
  REG_WR(bp, rule, BNX2X_PTP_TX_ON_RULE_MASK);
  break;
 case 128:
  BNX2X_ERR("One-step timestamping is not supported\n");
  return -ERANGE;
 }

 param = port ? NIG_REG_P1_LLH_PTP_PARAM_MASK :
  NIG_REG_P0_LLH_PTP_PARAM_MASK;
 rule = port ? NIG_REG_P1_LLH_PTP_RULE_MASK :
  NIG_REG_P0_LLH_PTP_RULE_MASK;
 switch (bp->rx_filter) {
 case 144:
  break;
 case 145:
 case 130:
 case 143:
  bp->rx_filter = 144;
  break;
 case 141:
 case 140:
 case 142:
  bp->rx_filter = 141;

  REG_WR(bp, param, BNX2X_PTP_V1_L4_PARAM_MASK);
  REG_WR(bp, rule, BNX2X_PTP_V1_L4_RULE_MASK);
  break;
 case 133:
 case 132:
 case 134:
  bp->rx_filter = 133;

  REG_WR(bp, param, BNX2X_PTP_V2_L4_PARAM_MASK);
  REG_WR(bp, rule, BNX2X_PTP_V2_L4_RULE_MASK);
  break;
 case 136:
 case 135:
 case 137:
  bp->rx_filter = 136;

  REG_WR(bp, param, BNX2X_PTP_V2_L2_PARAM_MASK);
  REG_WR(bp, rule, BNX2X_PTP_V2_L2_RULE_MASK);

  break;
 case 138:
 case 131:
 case 139:
  bp->rx_filter = 138;

  REG_WR(bp, param, BNX2X_PTP_V2_PARAM_MASK);
  REG_WR(bp, rule, BNX2X_PTP_V2_RULE_MASK);
  break;
 }


 rc = bnx2x_enable_ptp_packets(bp);
 if (rc)
  return rc;


 REG_WR(bp, port ? NIG_REG_P1_LLH_PTP_TO_HOST :
        NIG_REG_P0_LLH_PTP_TO_HOST, 0x1);

 return 0;
}
