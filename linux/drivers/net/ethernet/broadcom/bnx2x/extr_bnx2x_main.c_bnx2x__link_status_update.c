
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int link_up; int link_status; void* flow_ctrl; void* duplex; void* line_speed; int mac_type; } ;
struct TYPE_5__ {int* speed_cap_mask; int switch_cfg; void** req_line_speed; void** req_flow_ctrl; void** req_duplex; int port; struct bnx2x* bp; } ;
struct TYPE_4__ {int* supported; int* advertising; } ;
struct bnx2x {scalar_t__ state; TYPE_3__ link_vars; TYPE_2__ link_params; TYPE_1__ port; } ;


 void* BNX2X_FLOW_CTRL_NONE ;
 scalar_t__ BNX2X_STATE_OPEN ;
 int BP_PORT (struct bnx2x*) ;
 void* DUPLEX_FULL ;
 scalar_t__ IS_PF (struct bnx2x*) ;
 int LINK_STATUS_LINK_UP ;
 int LINK_STATUS_SPEED_AND_DUPLEX_10GTFD ;
 int MAC_TYPE_BMAC ;
 void* SPEED_10000 ;
 int STATS_EVENT_LINK_UP ;
 int STATS_EVENT_STOP ;
 int SUPPORTED_10000baseT_Full ;
 int SUPPORTED_1000baseT_Full ;
 int SUPPORTED_100baseT_Full ;
 int SUPPORTED_100baseT_Half ;
 int SUPPORTED_10baseT_Full ;
 int SUPPORTED_10baseT_Half ;
 int SUPPORTED_2500baseX_Full ;
 int SUPPORTED_Asym_Pause ;
 int SUPPORTED_Autoneg ;
 int SUPPORTED_FIBRE ;
 int SUPPORTED_Pause ;
 int SUPPORTED_TP ;
 int SWITCH_CFG_10G ;
 int __bnx2x_link_report (struct bnx2x*) ;
 int bnx2x_dcbx_pmf_update (struct bnx2x*) ;
 int bnx2x_link_report (struct bnx2x*) ;
 int bnx2x_link_status_update (TYPE_2__*,TYPE_3__*) ;
 int bnx2x_sample_bulletin (struct bnx2x*) ;
 int bnx2x_stats_handle (struct bnx2x*,int ) ;

void bnx2x__link_status_update(struct bnx2x *bp)
{
 if (bp->state != BNX2X_STATE_OPEN)
  return;


 if (IS_PF(bp)) {
  bnx2x_dcbx_pmf_update(bp);
  bnx2x_link_status_update(&bp->link_params, &bp->link_vars);
  if (bp->link_vars.link_up)
   bnx2x_stats_handle(bp, STATS_EVENT_LINK_UP);
  else
   bnx2x_stats_handle(bp, STATS_EVENT_STOP);

  bnx2x_link_report(bp);

 } else {
  bp->port.supported[0] |= (SUPPORTED_10baseT_Half |
       SUPPORTED_10baseT_Full |
       SUPPORTED_100baseT_Half |
       SUPPORTED_100baseT_Full |
       SUPPORTED_1000baseT_Full |
       SUPPORTED_2500baseX_Full |
       SUPPORTED_10000baseT_Full |
       SUPPORTED_TP |
       SUPPORTED_FIBRE |
       SUPPORTED_Autoneg |
       SUPPORTED_Pause |
       SUPPORTED_Asym_Pause);
  bp->port.advertising[0] = bp->port.supported[0];

  bp->link_params.bp = bp;
  bp->link_params.port = BP_PORT(bp);
  bp->link_params.req_duplex[0] = DUPLEX_FULL;
  bp->link_params.req_flow_ctrl[0] = BNX2X_FLOW_CTRL_NONE;
  bp->link_params.req_line_speed[0] = SPEED_10000;
  bp->link_params.speed_cap_mask[0] = 0x7f0000;
  bp->link_params.switch_cfg = SWITCH_CFG_10G;
  bp->link_vars.mac_type = MAC_TYPE_BMAC;
  bp->link_vars.line_speed = SPEED_10000;
  bp->link_vars.link_status =
   (LINK_STATUS_LINK_UP |
    LINK_STATUS_SPEED_AND_DUPLEX_10GTFD);
  bp->link_vars.link_up = 1;
  bp->link_vars.duplex = DUPLEX_FULL;
  bp->link_vars.flow_ctrl = BNX2X_FLOW_CTRL_NONE;
  __bnx2x_link_report(bp);

  bnx2x_sample_bulletin(bp);






  bnx2x_stats_handle(bp, STATS_EVENT_LINK_UP);
 }
}
