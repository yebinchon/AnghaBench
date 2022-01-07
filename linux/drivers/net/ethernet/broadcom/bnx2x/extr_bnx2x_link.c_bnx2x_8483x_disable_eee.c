
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct link_vars {int dummy; } ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*) ;
 int NETIF_MSG_LINK ;
 int PHY84833_MB_PROCESS1 ;
 int PHY848xx_CMD_SET_EEE_MODE ;
 int bnx2x_848xx_cmd_hdlr (struct bnx2x_phy*,struct link_params*,int ,int *,int,int ) ;
 int bnx2x_eee_disable (struct bnx2x_phy*,struct link_params*,struct link_vars*) ;

__attribute__((used)) static int bnx2x_8483x_disable_eee(struct bnx2x_phy *phy,
       struct link_params *params,
       struct link_vars *vars)
{
 int rc;
 struct bnx2x *bp = params->bp;
 u16 cmd_args = 0;

 DP(NETIF_MSG_LINK, "Don't Advertise 10GBase-T EEE\n");


 rc = bnx2x_848xx_cmd_hdlr(phy, params, PHY848xx_CMD_SET_EEE_MODE,
      &cmd_args, 1, PHY84833_MB_PROCESS1);
 if (rc) {
  DP(NETIF_MSG_LINK, "EEE disable failed.\n");
  return rc;
 }

 return bnx2x_eee_disable(phy, params, vars);
}
