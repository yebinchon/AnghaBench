
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct hwrm_port_phy_cfg_input {int flags; void* force_link_speed; int enables; void* auto_link_speed_mask; int auto_mode; } ;
struct TYPE_2__ {int autoneg; int advertising; int req_link_speed; } ;
struct bnxt {TYPE_1__ link_info; } ;


 int BNXT_AUTONEG_SPEED ;
 int PORT_PHY_CFG_REQ_AUTO_MODE_SPEED_MASK ;
 int PORT_PHY_CFG_REQ_ENABLES_AUTO_LINK_SPEED_MASK ;
 int PORT_PHY_CFG_REQ_ENABLES_AUTO_MODE ;
 int PORT_PHY_CFG_REQ_FLAGS_FORCE ;
 int PORT_PHY_CFG_REQ_FLAGS_RESET_PHY ;
 int PORT_PHY_CFG_REQ_FLAGS_RESTART_AUTONEG ;
 void* cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static void bnxt_hwrm_set_link_common(struct bnxt *bp,
          struct hwrm_port_phy_cfg_input *req)
{
 u8 autoneg = bp->link_info.autoneg;
 u16 fw_link_speed = bp->link_info.req_link_speed;
 u16 advertising = bp->link_info.advertising;

 if (autoneg & BNXT_AUTONEG_SPEED) {
  req->auto_mode |=
   PORT_PHY_CFG_REQ_AUTO_MODE_SPEED_MASK;

  req->enables |= cpu_to_le32(
   PORT_PHY_CFG_REQ_ENABLES_AUTO_LINK_SPEED_MASK);
  req->auto_link_speed_mask = cpu_to_le16(advertising);

  req->enables |= cpu_to_le32(PORT_PHY_CFG_REQ_ENABLES_AUTO_MODE);
  req->flags |=
   cpu_to_le32(PORT_PHY_CFG_REQ_FLAGS_RESTART_AUTONEG);
 } else {
  req->force_link_speed = cpu_to_le16(fw_link_speed);
  req->flags |= cpu_to_le32(PORT_PHY_CFG_REQ_FLAGS_FORCE);
 }


 req->flags |= cpu_to_le32(PORT_PHY_CFG_REQ_FLAGS_RESET_PHY);
}
