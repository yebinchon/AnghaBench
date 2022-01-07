
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwrm_port_phy_cfg_input {int member_0; } ;
struct bnxt {int dummy; } ;
typedef int req ;


 int HWRM_CMD_TIMEOUT ;
 int HWRM_PORT_PHY_CFG ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_port_phy_cfg_input*,int ,int,int) ;
 int bnxt_hwrm_set_eee (struct bnxt*,struct hwrm_port_phy_cfg_input*) ;
 int bnxt_hwrm_set_link_common (struct bnxt*,struct hwrm_port_phy_cfg_input*) ;
 int bnxt_hwrm_set_pause_common (struct bnxt*,struct hwrm_port_phy_cfg_input*) ;
 int hwrm_send_message (struct bnxt*,struct hwrm_port_phy_cfg_input*,int,int ) ;

int bnxt_hwrm_set_link_setting(struct bnxt *bp, bool set_pause, bool set_eee)
{
 struct hwrm_port_phy_cfg_input req = {0};

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_PORT_PHY_CFG, -1, -1);
 if (set_pause)
  bnxt_hwrm_set_pause_common(bp, &req);

 bnxt_hwrm_set_link_common(bp, &req);

 if (set_eee)
  bnxt_hwrm_set_eee(bp, &req);
 return hwrm_send_message(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
}
