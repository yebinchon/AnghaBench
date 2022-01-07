
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct link_vars {int phy_link_up; int duplex; int line_speed; int mac_type; int flow_ctrl; int link_status; } ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {scalar_t__ req_line_speed; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_FLOW_CTRL_NONE ;
 int DP (int ,char*,...) ;
 int DUPLEX_FULL ;
 int EINVAL ;
 int LINK_1000TFD ;
 int LINK_1000THD ;
 int LINK_100TXFD ;
 int LINK_100TXHD ;
 int LINK_10GTFD ;
 int LINK_10TFD ;
 int LINK_10THD ;
 int LINK_20GTFD ;
 int LINK_2500TFD ;
 int LINK_2500THD ;
 int LINK_STATUS_AUTO_NEGOTIATE_ENABLED ;
 int LINK_STATUS_LINK_UP ;
 int MAC_TYPE_NONE ;
 int NETIF_MSG_LINK ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int SPEED_10000 ;
 int SPEED_20000 ;
 int SPEED_2500 ;
 scalar_t__ SPEED_AUTO_NEG ;

__attribute__((used)) static int bnx2x_get_link_speed_duplex(struct bnx2x_phy *phy,
         struct link_params *params,
          struct link_vars *vars,
          u16 is_link_up,
          u16 speed_mask,
          u16 is_duplex)
{
 struct bnx2x *bp = params->bp;
 if (phy->req_line_speed == SPEED_AUTO_NEG)
  vars->link_status |= LINK_STATUS_AUTO_NEGOTIATE_ENABLED;
 if (is_link_up) {
  DP(NETIF_MSG_LINK, "phy link up\n");

  vars->phy_link_up = 1;
  vars->link_status |= LINK_STATUS_LINK_UP;

  switch (speed_mask) {
  case 135:
   vars->line_speed = SPEED_10;
   if (is_duplex == DUPLEX_FULL)
    vars->link_status |= LINK_10TFD;
   else
    vars->link_status |= LINK_10THD;
   break;

  case 142:
   vars->line_speed = SPEED_100;
   if (is_duplex == DUPLEX_FULL)
    vars->link_status |= LINK_100TXFD;
   else
    vars->link_status |= LINK_100TXHD;
   break;

  case 134:
  case 133:
   vars->line_speed = SPEED_1000;
   if (is_duplex == DUPLEX_FULL)
    vars->link_status |= LINK_1000TFD;
   else
    vars->link_status |= LINK_1000THD;
   break;

  case 130:
   vars->line_speed = SPEED_2500;
   if (is_duplex == DUPLEX_FULL)
    vars->link_status |= LINK_2500TFD;
   else
    vars->link_status |= LINK_2500THD;
   break;

  case 129:
  case 128:
   DP(NETIF_MSG_LINK,
     "link speed unsupported  gp_status 0x%x\n",
      speed_mask);
   return -EINVAL;

  case 138:
  case 140:
  case 141:
  case 139:
  case 137:
  case 136:
   vars->line_speed = SPEED_10000;
   vars->link_status |= LINK_10GTFD;
   break;
  case 132:
  case 131:
   vars->line_speed = SPEED_20000;
   vars->link_status |= LINK_20GTFD;
   break;
  default:
   DP(NETIF_MSG_LINK,
      "link speed unsupported gp_status 0x%x\n",
      speed_mask);
   return -EINVAL;
  }
 } else {
  DP(NETIF_MSG_LINK, "phy link down\n");

  vars->phy_link_up = 0;

  vars->duplex = DUPLEX_FULL;
  vars->flow_ctrl = BNX2X_FLOW_CTRL_NONE;
  vars->mac_type = MAC_TYPE_NONE;
 }
 DP(NETIF_MSG_LINK, " phy_link_up %x line_speed %d\n",
      vars->phy_link_up, vars->line_speed);
 return 0;
}
