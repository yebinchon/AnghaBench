
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_vars {int dummy; } ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*) ;
 int NETIF_MSG_LINK ;
 int bnx2x_warpcore_enable_AN_KR2 (struct bnx2x_phy*,struct link_params*,struct link_vars*) ;
 int bnx2x_warpcore_restart_AN_KR (struct bnx2x_phy*,struct link_params*) ;

__attribute__((used)) static void bnx2x_kr2_recovery(struct link_params *params,
          struct link_vars *vars,
          struct bnx2x_phy *phy)
{
 struct bnx2x *bp = params->bp;
 DP(NETIF_MSG_LINK, "KR2 recovery\n");
 bnx2x_warpcore_enable_AN_KR2(phy, params, vars);
 bnx2x_warpcore_restart_AN_KR(phy, params);
}
