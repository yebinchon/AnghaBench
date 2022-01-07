
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hwrm_port_phy_cfg_input {int member_0; } ;
struct TYPE_2__ {int autoneg; int force_link_chng; scalar_t__ auto_pause_setting; int req_flow_ctrl; int force_pause_setting; int pause; } ;
struct bnxt {int hwrm_cmd_lock; TYPE_1__ link_info; } ;
typedef int req ;


 int BNXT_AUTONEG_FLOW_CTRL ;
 int HWRM_CMD_TIMEOUT ;
 int HWRM_PORT_PHY_CFG ;
 int _hwrm_send_message (struct bnxt*,struct hwrm_port_phy_cfg_input*,int,int ) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_port_phy_cfg_input*,int ,int,int) ;
 int bnxt_hwrm_set_link_common (struct bnxt*,struct hwrm_port_phy_cfg_input*) ;
 int bnxt_hwrm_set_pause_common (struct bnxt*,struct hwrm_port_phy_cfg_input*) ;
 int bnxt_report_link (struct bnxt*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int bnxt_hwrm_set_pause(struct bnxt *bp)
{
 struct hwrm_port_phy_cfg_input req = {0};
 int rc;

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_PORT_PHY_CFG, -1, -1);
 bnxt_hwrm_set_pause_common(bp, &req);

 if ((bp->link_info.autoneg & BNXT_AUTONEG_FLOW_CTRL) ||
     bp->link_info.force_link_chng)
  bnxt_hwrm_set_link_common(bp, &req);

 mutex_lock(&bp->hwrm_cmd_lock);
 rc = _hwrm_send_message(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
 if (!rc && !(bp->link_info.autoneg & BNXT_AUTONEG_FLOW_CTRL)) {




  bp->link_info.pause =
  bp->link_info.force_pause_setting = bp->link_info.req_flow_ctrl;
  bp->link_info.auto_pause_setting = 0;
  if (!bp->link_info.force_link_chng)
   bnxt_report_link(bp);
 }
 bp->link_info.force_link_chng = 0;
 mutex_unlock(&bp->hwrm_cmd_lock);
 return rc;
}
