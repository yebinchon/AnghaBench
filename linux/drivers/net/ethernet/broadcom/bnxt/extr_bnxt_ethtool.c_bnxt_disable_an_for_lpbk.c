
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hwrm_port_phy_cfg_input {void* force_link_speed; int flags; } ;
struct bnxt_link_info {int link_speed; int autoneg; } ;
struct bnxt {struct bnxt_link_info link_info; int dev; } ;


 int BNXT_LINK_SPEED_MSK_10GB ;
 int BNXT_LINK_SPEED_MSK_25GB ;
 int BNXT_LINK_SPEED_MSK_40GB ;
 int BNXT_LINK_SPEED_MSK_50GB ;
 int HWRM_CMD_TIMEOUT ;
 int PORT_PHY_CFG_REQ_FLAGS_FORCE ;
 int PORT_PHY_CFG_REQ_FLAGS_RESET_PHY ;
 int PORT_PHY_CFG_REQ_FORCE_LINK_SPEED_10GB ;
 int PORT_PHY_CFG_REQ_FORCE_LINK_SPEED_1GB ;
 int PORT_PHY_CFG_REQ_FORCE_LINK_SPEED_25GB ;
 int PORT_PHY_CFG_REQ_FORCE_LINK_SPEED_40GB ;
 int PORT_PHY_CFG_REQ_FORCE_LINK_SPEED_50GB ;
 int bnxt_query_force_speeds (struct bnxt*,int*) ;
 void* cpu_to_le16 (int) ;
 int cpu_to_le32 (int) ;
 int hwrm_send_message (struct bnxt*,struct hwrm_port_phy_cfg_input*,int,int ) ;
 scalar_t__ netif_carrier_ok (int ) ;

__attribute__((used)) static int bnxt_disable_an_for_lpbk(struct bnxt *bp,
        struct hwrm_port_phy_cfg_input *req)
{
 struct bnxt_link_info *link_info = &bp->link_info;
 u16 fw_advertising;
 u16 fw_speed;
 int rc;

 if (!link_info->autoneg)
  return 0;

 rc = bnxt_query_force_speeds(bp, &fw_advertising);
 if (rc)
  return rc;

 fw_speed = PORT_PHY_CFG_REQ_FORCE_LINK_SPEED_1GB;
 if (netif_carrier_ok(bp->dev))
  fw_speed = bp->link_info.link_speed;
 else if (fw_advertising & BNXT_LINK_SPEED_MSK_10GB)
  fw_speed = PORT_PHY_CFG_REQ_FORCE_LINK_SPEED_10GB;
 else if (fw_advertising & BNXT_LINK_SPEED_MSK_25GB)
  fw_speed = PORT_PHY_CFG_REQ_FORCE_LINK_SPEED_25GB;
 else if (fw_advertising & BNXT_LINK_SPEED_MSK_40GB)
  fw_speed = PORT_PHY_CFG_REQ_FORCE_LINK_SPEED_40GB;
 else if (fw_advertising & BNXT_LINK_SPEED_MSK_50GB)
  fw_speed = PORT_PHY_CFG_REQ_FORCE_LINK_SPEED_50GB;

 req->force_link_speed = cpu_to_le16(fw_speed);
 req->flags |= cpu_to_le32(PORT_PHY_CFG_REQ_FLAGS_FORCE |
      PORT_PHY_CFG_REQ_FLAGS_RESET_PHY);
 rc = hwrm_send_message(bp, req, sizeof(*req), HWRM_CMD_TIMEOUT);
 req->flags = 0;
 req->force_link_speed = cpu_to_le16(0);
 return rc;
}
