
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct link_vars {int link_status; } ;
struct link_params {scalar_t__ multi_phy_config; scalar_t__ num_phys; scalar_t__* req_line_speed; TYPE_1__* phy; int * req_duplex; int * speed_cap_mask; int * req_flow_ctrl; struct bnx2x* bp; } ;
struct bnx2x {int dummy; } ;
struct TYPE_2__ {scalar_t__ req_line_speed; int speed_cap_mask; int req_flow_ctrl; int req_duplex; } ;


 int DP (int ,char*,int ,scalar_t__,int ) ;
 scalar_t__ EXT_PHY1 ;
 scalar_t__ EXT_PHY2 ;
 scalar_t__ INT_PHY ;
 scalar_t__ LINK_CONFIG_IDX (scalar_t__) ;
 int LINK_STATUS_AUTO_NEGOTIATE_ENABLED ;
 int NETIF_MSG_LINK ;
 scalar_t__ PORT_HW_CFG_PHY_SWAPPED_ENABLED ;
 scalar_t__ SPEED_AUTO_NEG ;

__attribute__((used)) static void set_phy_vars(struct link_params *params,
    struct link_vars *vars)
{
 struct bnx2x *bp = params->bp;
 u8 actual_phy_idx, phy_index, link_cfg_idx;
 u8 phy_config_swapped = params->multi_phy_config &
   PORT_HW_CFG_PHY_SWAPPED_ENABLED;
 for (phy_index = INT_PHY; phy_index < params->num_phys;
       phy_index++) {
  link_cfg_idx = LINK_CONFIG_IDX(phy_index);
  actual_phy_idx = phy_index;
  if (phy_config_swapped) {
   if (phy_index == EXT_PHY1)
    actual_phy_idx = EXT_PHY2;
   else if (phy_index == EXT_PHY2)
    actual_phy_idx = EXT_PHY1;
  }
  params->phy[actual_phy_idx].req_flow_ctrl =
   params->req_flow_ctrl[link_cfg_idx];

  params->phy[actual_phy_idx].req_line_speed =
   params->req_line_speed[link_cfg_idx];

  params->phy[actual_phy_idx].speed_cap_mask =
   params->speed_cap_mask[link_cfg_idx];

  params->phy[actual_phy_idx].req_duplex =
   params->req_duplex[link_cfg_idx];

  if (params->req_line_speed[link_cfg_idx] ==
      SPEED_AUTO_NEG)
   vars->link_status |= LINK_STATUS_AUTO_NEGOTIATE_ENABLED;

  DP(NETIF_MSG_LINK, "req_flow_ctrl %x, req_line_speed %x,"
      " speed_cap_mask %x\n",
      params->phy[actual_phy_idx].req_flow_ctrl,
      params->phy[actual_phy_idx].req_line_speed,
      params->phy[actual_phy_idx].speed_cap_mask);
 }
}
