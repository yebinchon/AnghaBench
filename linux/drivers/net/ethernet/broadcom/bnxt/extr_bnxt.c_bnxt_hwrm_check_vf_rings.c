
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hwrm_func_vf_cfg_input {int flags; int member_0; } ;
struct bnxt {int flags; } ;
typedef int req ;


 int BNXT_FLAG_CHIP_P5 ;
 int BNXT_NEW_RM (struct bnxt*) ;
 int FUNC_VF_CFG_REQ_FLAGS_CMPL_ASSETS_TEST ;
 int FUNC_VF_CFG_REQ_FLAGS_RING_GRP_ASSETS_TEST ;
 int FUNC_VF_CFG_REQ_FLAGS_RSSCOS_CTX_ASSETS_TEST ;
 int FUNC_VF_CFG_REQ_FLAGS_RX_ASSETS_TEST ;
 int FUNC_VF_CFG_REQ_FLAGS_STAT_CTX_ASSETS_TEST ;
 int FUNC_VF_CFG_REQ_FLAGS_TX_ASSETS_TEST ;
 int FUNC_VF_CFG_REQ_FLAGS_VNIC_ASSETS_TEST ;
 int HWRM_CMD_TIMEOUT ;
 int __bnxt_hwrm_reserve_vf_rings (struct bnxt*,struct hwrm_func_vf_cfg_input*,int,int,int,int,int,int) ;
 int cpu_to_le32 (int) ;
 int hwrm_send_message_silent (struct bnxt*,struct hwrm_func_vf_cfg_input*,int,int ) ;

__attribute__((used)) static int bnxt_hwrm_check_vf_rings(struct bnxt *bp, int tx_rings, int rx_rings,
        int ring_grps, int cp_rings, int stats,
        int vnics)
{
 struct hwrm_func_vf_cfg_input req = {0};
 u32 flags;
 int rc;

 if (!BNXT_NEW_RM(bp))
  return 0;

 __bnxt_hwrm_reserve_vf_rings(bp, &req, tx_rings, rx_rings, ring_grps,
         cp_rings, stats, vnics);
 flags = FUNC_VF_CFG_REQ_FLAGS_TX_ASSETS_TEST |
  FUNC_VF_CFG_REQ_FLAGS_RX_ASSETS_TEST |
  FUNC_VF_CFG_REQ_FLAGS_CMPL_ASSETS_TEST |
  FUNC_VF_CFG_REQ_FLAGS_STAT_CTX_ASSETS_TEST |
  FUNC_VF_CFG_REQ_FLAGS_VNIC_ASSETS_TEST |
  FUNC_VF_CFG_REQ_FLAGS_RSSCOS_CTX_ASSETS_TEST;
 if (!(bp->flags & BNXT_FLAG_CHIP_P5))
  flags |= FUNC_VF_CFG_REQ_FLAGS_RING_GRP_ASSETS_TEST;

 req.flags = cpu_to_le32(flags);
 rc = hwrm_send_message_silent(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
 return rc;
}
