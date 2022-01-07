
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwrm_port_phy_cfg_input {int flags; int member_0; } ;
struct bnxt {int pdev; } ;
typedef int req ;


 int BNXT_SINGLE_PF (struct bnxt*) ;
 int HWRM_CMD_TIMEOUT ;
 int HWRM_PORT_PHY_CFG ;
 int PORT_PHY_CFG_REQ_FLAGS_FORCE_LINK_DWN ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_port_phy_cfg_input*,int ,int,int) ;
 int cpu_to_le32 (int ) ;
 int hwrm_send_message (struct bnxt*,struct hwrm_port_phy_cfg_input*,int,int ) ;
 scalar_t__ pci_num_vf (int ) ;

__attribute__((used)) static int bnxt_hwrm_shutdown_link(struct bnxt *bp)
{
 struct hwrm_port_phy_cfg_input req = {0};

 if (!BNXT_SINGLE_PF(bp))
  return 0;

 if (pci_num_vf(bp->pdev))
  return 0;

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_PORT_PHY_CFG, -1, -1);
 req.flags = cpu_to_le32(PORT_PHY_CFG_REQ_FLAGS_FORCE_LINK_DWN);
 return hwrm_send_message(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
}
