
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct link_params {scalar_t__* req_line_speed; int* speed_cap_mask; int loopback_mode; } ;
struct TYPE_2__ {scalar_t__ link_up; } ;
struct bnx2x {struct link_params link_params; int period_task; TYPE_1__ link_vars; } ;


 int BNX2X_ERR (char*) ;
 int BP_NOMCP (struct bnx2x*) ;
 int EINVAL ;
 int LOAD_DIAG ;
 int LOAD_LOOPBACK_EXT ;
 int LOOPBACK_EXT ;
 int LOOPBACK_XGXS ;
 int PORT_HW_CFG_SPEED_CAPABILITY_D0_10G ;
 int PORT_HW_CFG_SPEED_CAPABILITY_D0_20G ;
 scalar_t__ SPEED_1000 ;
 scalar_t__ SPEED_10000 ;
 scalar_t__ SPEED_20000 ;
 int STATS_EVENT_LINK_UP ;
 int bnx2x_acquire_phy_lock (struct bnx2x*) ;
 int bnx2x_calc_fc_adv (struct bnx2x*) ;
 int bnx2x_get_link_cfg_idx (struct bnx2x*) ;
 int bnx2x_init_dropless_fc (struct bnx2x*) ;
 int bnx2x_link_report (struct bnx2x*) ;
 int bnx2x_phy_init (struct link_params*,TYPE_1__*) ;
 int bnx2x_release_phy_lock (struct bnx2x*) ;
 int bnx2x_set_requested_fc (struct bnx2x*) ;
 int bnx2x_stats_handle (struct bnx2x*,int ) ;
 int bnx2x_wq ;
 int queue_delayed_work (int ,int *,int ) ;

int bnx2x_initial_phy_init(struct bnx2x *bp, int load_mode)
{
 int rc, cfx_idx = bnx2x_get_link_cfg_idx(bp);
 u16 req_line_speed = bp->link_params.req_line_speed[cfx_idx];

 if (!BP_NOMCP(bp)) {
  bnx2x_set_requested_fc(bp);
  bnx2x_acquire_phy_lock(bp);

  if (load_mode == LOAD_DIAG) {
   struct link_params *lp = &bp->link_params;
   lp->loopback_mode = LOOPBACK_XGXS;

   if (lp->req_line_speed[cfx_idx] < SPEED_20000) {
    if (lp->speed_cap_mask[cfx_idx] &
        PORT_HW_CFG_SPEED_CAPABILITY_D0_20G)
     lp->req_line_speed[cfx_idx] =
     SPEED_20000;
    else if (lp->speed_cap_mask[cfx_idx] &
         PORT_HW_CFG_SPEED_CAPABILITY_D0_10G)
      lp->req_line_speed[cfx_idx] =
      SPEED_10000;
    else
     lp->req_line_speed[cfx_idx] =
     SPEED_1000;
   }
  }

  if (load_mode == LOAD_LOOPBACK_EXT) {
   struct link_params *lp = &bp->link_params;
   lp->loopback_mode = LOOPBACK_EXT;
  }

  rc = bnx2x_phy_init(&bp->link_params, &bp->link_vars);

  bnx2x_release_phy_lock(bp);

  bnx2x_init_dropless_fc(bp);

  bnx2x_calc_fc_adv(bp);

  if (bp->link_vars.link_up) {
   bnx2x_stats_handle(bp, STATS_EVENT_LINK_UP);
   bnx2x_link_report(bp);
  }
  queue_delayed_work(bnx2x_wq, &bp->period_task, 0);
  bp->link_params.req_line_speed[cfx_idx] = req_line_speed;
  return rc;
 }
 BNX2X_ERR("Bootcode is missing - can not initialize link\n");
 return -EINVAL;
}
