
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_link_info {int autoneg; int auto_pause_setting; int req_flow_ctrl; int force_pause_setting; int duplex_setting; int req_duplex; int force_link_speed; int req_link_speed; scalar_t__ auto_link_speeds; scalar_t__ advertising; int auto_mode; scalar_t__ support_speeds; scalar_t__ support_auto_speeds; } ;
struct bnxt {int hwrm_spec_code; int dev; struct bnxt_link_info link_info; } ;


 int BNXT_AUTONEG_FLOW_CTRL ;
 int BNXT_AUTONEG_SPEED ;
 scalar_t__ BNXT_AUTO_MODE (int ) ;
 int BNXT_LINK_PAUSE_BOTH ;
 int PORT_PHY_CFG_REQ_AUTO_PAUSE_AUTONEG_PAUSE ;
 int bnxt_hwrm_phy_qcaps (struct bnxt*) ;
 int bnxt_update_link (struct bnxt*,int) ;
 int netdev_err (int ,char*,int) ;

__attribute__((used)) static int bnxt_probe_phy(struct bnxt *bp, bool fw_dflt)
{
 int rc = 0;
 struct bnxt_link_info *link_info = &bp->link_info;

 rc = bnxt_hwrm_phy_qcaps(bp);
 if (rc) {
  netdev_err(bp->dev, "Probe phy can't get phy capabilities (rc: %x)\n",
      rc);
  return rc;
 }
 rc = bnxt_update_link(bp, 0);
 if (rc) {
  netdev_err(bp->dev, "Probe phy can't update link (rc: %x)\n",
      rc);
  return rc;
 }




 if (link_info->auto_link_speeds && !link_info->support_auto_speeds)
  link_info->support_auto_speeds = link_info->support_speeds;

 if (!fw_dflt)
  return 0;


 if (BNXT_AUTO_MODE(link_info->auto_mode)) {
  link_info->autoneg = BNXT_AUTONEG_SPEED;
  if (bp->hwrm_spec_code >= 0x10201) {
   if (link_info->auto_pause_setting &
       PORT_PHY_CFG_REQ_AUTO_PAUSE_AUTONEG_PAUSE)
    link_info->autoneg |= BNXT_AUTONEG_FLOW_CTRL;
  } else {
   link_info->autoneg |= BNXT_AUTONEG_FLOW_CTRL;
  }
  link_info->advertising = link_info->auto_link_speeds;
 } else {
  link_info->req_link_speed = link_info->force_link_speed;
  link_info->req_duplex = link_info->duplex_setting;
 }
 if (link_info->autoneg & BNXT_AUTONEG_FLOW_CTRL)
  link_info->req_flow_ctrl =
   link_info->auto_pause_setting & BNXT_LINK_PAUSE_BOTH;
 else
  link_info->req_flow_ctrl = link_info->force_pause_setting;
 return 0;
}
