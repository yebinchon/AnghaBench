
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_vars {int link_up; int phy_flags; int mac_type; int flow_ctrl; int duplex; int line_speed; } ;
struct link_params {int port; struct bnx2x* bp; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_FLOW_CTRL_NONE ;
 int DUPLEX_FULL ;
 int MAC_TYPE_UMAC ;
 scalar_t__ NIG_REG_EGRESS_DRAIN0_MODE ;
 int PHY_XGXS_FLAG ;
 int REG_WR (struct bnx2x*,scalar_t__,int ) ;
 int SPEED_1000 ;
 int bnx2x_umac_enable (struct link_params*,struct link_vars*,int) ;

__attribute__((used)) static void bnx2x_init_umac_loopback(struct link_params *params,
         struct link_vars *vars)
{
 struct bnx2x *bp = params->bp;
 vars->link_up = 1;
 vars->line_speed = SPEED_1000;
 vars->duplex = DUPLEX_FULL;
 vars->flow_ctrl = BNX2X_FLOW_CTRL_NONE;
 vars->mac_type = MAC_TYPE_UMAC;
 vars->phy_flags = PHY_XGXS_FLAG;
 bnx2x_umac_enable(params, vars, 1);

 REG_WR(bp, NIG_REG_EGRESS_DRAIN0_MODE + params->port*4, 0);
}
