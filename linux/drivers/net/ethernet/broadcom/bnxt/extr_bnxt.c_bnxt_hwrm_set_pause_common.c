
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hwrm_port_phy_cfg_input {int enables; int force_pause; int auto_pause; } ;
struct TYPE_2__ {int autoneg; int req_flow_ctrl; } ;
struct bnxt {int hwrm_spec_code; TYPE_1__ link_info; } ;


 int BNXT_AUTONEG_FLOW_CTRL ;
 int BNXT_LINK_PAUSE_RX ;
 int BNXT_LINK_PAUSE_TX ;
 int PORT_PHY_CFG_REQ_AUTO_PAUSE_AUTONEG_PAUSE ;
 int PORT_PHY_CFG_REQ_AUTO_PAUSE_RX ;
 int PORT_PHY_CFG_REQ_AUTO_PAUSE_TX ;
 int PORT_PHY_CFG_REQ_ENABLES_AUTO_PAUSE ;
 int PORT_PHY_CFG_REQ_ENABLES_FORCE_PAUSE ;
 int PORT_PHY_CFG_REQ_FORCE_PAUSE_RX ;
 int PORT_PHY_CFG_REQ_FORCE_PAUSE_TX ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static void
bnxt_hwrm_set_pause_common(struct bnxt *bp, struct hwrm_port_phy_cfg_input *req)
{
 if (bp->link_info.autoneg & BNXT_AUTONEG_FLOW_CTRL) {
  if (bp->hwrm_spec_code >= 0x10201)
   req->auto_pause =
    PORT_PHY_CFG_REQ_AUTO_PAUSE_AUTONEG_PAUSE;
  if (bp->link_info.req_flow_ctrl & BNXT_LINK_PAUSE_RX)
   req->auto_pause |= PORT_PHY_CFG_REQ_AUTO_PAUSE_RX;
  if (bp->link_info.req_flow_ctrl & BNXT_LINK_PAUSE_TX)
   req->auto_pause |= PORT_PHY_CFG_REQ_AUTO_PAUSE_TX;
  req->enables |=
   cpu_to_le32(PORT_PHY_CFG_REQ_ENABLES_AUTO_PAUSE);
 } else {
  if (bp->link_info.req_flow_ctrl & BNXT_LINK_PAUSE_RX)
   req->force_pause |= PORT_PHY_CFG_REQ_FORCE_PAUSE_RX;
  if (bp->link_info.req_flow_ctrl & BNXT_LINK_PAUSE_TX)
   req->force_pause |= PORT_PHY_CFG_REQ_FORCE_PAUSE_TX;
  req->enables |=
   cpu_to_le32(PORT_PHY_CFG_REQ_ENABLES_FORCE_PAUSE);
  if (bp->hwrm_spec_code >= 0x10201) {
   req->auto_pause = req->force_pause;
   req->enables |= cpu_to_le32(
    PORT_PHY_CFG_REQ_ENABLES_AUTO_PAUSE);
  }
 }
}
