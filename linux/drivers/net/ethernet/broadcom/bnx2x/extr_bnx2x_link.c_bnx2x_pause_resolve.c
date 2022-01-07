
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct link_vars {int link_status; void* flow_ctrl; } ;
struct link_params {void* req_fc_auto_adv; struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 void* BNX2X_FLOW_CTRL_BOTH ;
 void* BNX2X_FLOW_CTRL_NONE ;
 void* BNX2X_FLOW_CTRL_RX ;
 void* BNX2X_FLOW_CTRL_TX ;
 int DP (int ,char*) ;
 int LINK_STATUS_LINK_PARTNER_ASYMMETRIC_PAUSE ;
 int LINK_STATUS_LINK_PARTNER_SYMMETRIC_PAUSE ;
 int NETIF_MSG_LINK ;

__attribute__((used)) static void bnx2x_pause_resolve(struct bnx2x_phy *phy,
    struct link_params *params,
    struct link_vars *vars,
    u32 pause_result)
{
 struct bnx2x *bp = params->bp;

 switch (pause_result) {
 case 0xb:
  DP(NETIF_MSG_LINK, "Flow Control: TX only\n");
  vars->flow_ctrl = BNX2X_FLOW_CTRL_TX;
  break;

 case 0xe:
  DP(NETIF_MSG_LINK, "Flow Control: RX only\n");
  vars->flow_ctrl = BNX2X_FLOW_CTRL_RX;
  break;

 case 0x5:
 case 0x7:
 case 0xd:
 case 0xf:




  if (params->req_fc_auto_adv == BNX2X_FLOW_CTRL_BOTH) {
   DP(NETIF_MSG_LINK, "Flow Control: RX & TX\n");
   vars->flow_ctrl = BNX2X_FLOW_CTRL_BOTH;
  } else {
   DP(NETIF_MSG_LINK, "Flow Control: RX only\n");
   vars->flow_ctrl = BNX2X_FLOW_CTRL_RX;
  }
  break;

 default:
  DP(NETIF_MSG_LINK, "Flow Control: None\n");
  vars->flow_ctrl = BNX2X_FLOW_CTRL_NONE;
  break;
 }
 if (pause_result & (1<<0))
  vars->link_status |= LINK_STATUS_LINK_PARTNER_SYMMETRIC_PAUSE;
 if (pause_result & (1<<1))
  vars->link_status |= LINK_STATUS_LINK_PARTNER_ASYMMETRIC_PAUSE;

}
