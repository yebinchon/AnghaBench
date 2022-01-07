
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwrm_port_mac_cfg_input {int lpbk; int enables; int member_0; } ;
struct bnxt {int dummy; } ;
typedef int req ;


 int HWRM_CMD_TIMEOUT ;
 int HWRM_PORT_MAC_CFG ;
 int PORT_MAC_CFG_REQ_ENABLES_LPBK ;
 int PORT_MAC_CFG_REQ_LPBK_LOCAL ;
 int PORT_MAC_CFG_REQ_LPBK_NONE ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_port_mac_cfg_input*,int ,int,int) ;
 int cpu_to_le32 (int ) ;
 int hwrm_send_message (struct bnxt*,struct hwrm_port_mac_cfg_input*,int,int ) ;

__attribute__((used)) static int bnxt_hwrm_mac_loopback(struct bnxt *bp, bool enable)
{
 struct hwrm_port_mac_cfg_input req = {0};

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_PORT_MAC_CFG, -1, -1);

 req.enables = cpu_to_le32(PORT_MAC_CFG_REQ_ENABLES_LPBK);
 if (enable)
  req.lpbk = PORT_MAC_CFG_REQ_LPBK_LOCAL;
 else
  req.lpbk = PORT_MAC_CFG_REQ_LPBK_NONE;
 return hwrm_send_message(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
}
