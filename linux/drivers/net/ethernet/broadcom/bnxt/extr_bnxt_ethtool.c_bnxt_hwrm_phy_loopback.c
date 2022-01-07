
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwrm_port_phy_cfg_input {int enables; int lpbk; int member_0; } ;
struct bnxt {int dummy; } ;
typedef int req ;


 int HWRM_CMD_TIMEOUT ;
 int HWRM_PORT_PHY_CFG ;
 int PORT_PHY_CFG_REQ_ENABLES_LPBK ;
 int PORT_PHY_CFG_REQ_LPBK_EXTERNAL ;
 int PORT_PHY_CFG_REQ_LPBK_LOCAL ;
 int PORT_PHY_CFG_REQ_LPBK_NONE ;
 int bnxt_disable_an_for_lpbk (struct bnxt*,struct hwrm_port_phy_cfg_input*) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_port_phy_cfg_input*,int ,int,int) ;
 int cpu_to_le32 (int ) ;
 int hwrm_send_message (struct bnxt*,struct hwrm_port_phy_cfg_input*,int,int ) ;

__attribute__((used)) static int bnxt_hwrm_phy_loopback(struct bnxt *bp, bool enable, bool ext)
{
 struct hwrm_port_phy_cfg_input req = {0};

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_PORT_PHY_CFG, -1, -1);

 if (enable) {
  bnxt_disable_an_for_lpbk(bp, &req);
  if (ext)
   req.lpbk = PORT_PHY_CFG_REQ_LPBK_EXTERNAL;
  else
   req.lpbk = PORT_PHY_CFG_REQ_LPBK_LOCAL;
 } else {
  req.lpbk = PORT_PHY_CFG_REQ_LPBK_NONE;
 }
 req.enables = cpu_to_le32(PORT_PHY_CFG_REQ_ENABLES_LPBK);
 return hwrm_send_message(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
}
