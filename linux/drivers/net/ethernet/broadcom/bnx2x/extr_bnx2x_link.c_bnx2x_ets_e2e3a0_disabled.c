
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_params {struct bnx2x* bp; } ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*) ;
 int NETIF_MSG_LINK ;
 int NIG_REG_P0_TX_ARB_CLIENT_CREDIT_MAP ;
 int NIG_REG_P0_TX_ARB_CLIENT_IS_STRICT ;
 int NIG_REG_P0_TX_ARB_CLIENT_IS_SUBJECT2WFQ ;
 int NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_0 ;
 int NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_1 ;
 int NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_0 ;
 int NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_1 ;
 int NIG_REG_P0_TX_ARB_NUM_STRICT_ARB_SLOTS ;
 int NIG_REG_P0_TX_ARB_PRIORITY_CLIENT ;
 int PBF_REG_COS0_UPPER_BOUND ;
 int PBF_REG_COS0_WEIGHT ;
 int PBF_REG_COS1_UPPER_BOUND ;
 int PBF_REG_COS1_WEIGHT ;
 int PBF_REG_ETS_ENABLED ;
 int PBF_REG_HIGH_PRIORITY_COS_NUM ;
 int PBF_REG_NUM_STRICT_ARB_SLOTS ;
 int REG_WR (struct bnx2x*,int ,int) ;

__attribute__((used)) static void bnx2x_ets_e2e3a0_disabled(struct link_params *params)
{

 struct bnx2x *bp = params->bp;

 DP(NETIF_MSG_LINK, "ETS E2E3 disabled configuration\n");
 REG_WR(bp, NIG_REG_P0_TX_ARB_PRIORITY_CLIENT, 0x4688);
 REG_WR(bp, NIG_REG_P0_TX_ARB_CLIENT_IS_STRICT, 0x7);

 REG_WR(bp, NIG_REG_P0_TX_ARB_CLIENT_IS_SUBJECT2WFQ, 0);



 REG_WR(bp, NIG_REG_P0_TX_ARB_NUM_STRICT_ARB_SLOTS, 0x100);



 REG_WR(bp, NIG_REG_P0_TX_ARB_CLIENT_CREDIT_MAP, 0);
 REG_WR(bp, NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_0, 0);
 REG_WR(bp, NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_1, 0);

 REG_WR(bp, NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_0, 0);
 REG_WR(bp, NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_1, 0);
 REG_WR(bp, PBF_REG_HIGH_PRIORITY_COS_NUM, 0);

 REG_WR(bp, PBF_REG_ETS_ENABLED, 0);



 REG_WR(bp, PBF_REG_COS0_WEIGHT, 0x2710);
 REG_WR(bp, PBF_REG_COS1_WEIGHT, 0x2710);

 REG_WR(bp, PBF_REG_COS0_UPPER_BOUND, 0x989680);
 REG_WR(bp, PBF_REG_COS1_UPPER_BOUND, 0x989680);

 REG_WR(bp, PBF_REG_NUM_STRICT_ARB_SLOTS, 0);
}
