
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct hwrm_func_cfg_input {int evb_mode; int enables; int fid; int member_0; } ;
struct bnxt {int dummy; } ;
typedef int req ;


 scalar_t__ BRIDGE_MODE_VEB ;
 scalar_t__ BRIDGE_MODE_VEPA ;
 int EINVAL ;
 int FUNC_CFG_REQ_ENABLES_EVB_MODE ;
 int FUNC_CFG_REQ_EVB_MODE_VEB ;
 int FUNC_CFG_REQ_EVB_MODE_VEPA ;
 int HWRM_CMD_TIMEOUT ;
 int HWRM_FUNC_CFG ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_func_cfg_input*,int ,int,int) ;
 int cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;
 int hwrm_send_message (struct bnxt*,struct hwrm_func_cfg_input*,int,int ) ;

__attribute__((used)) static int bnxt_hwrm_set_br_mode(struct bnxt *bp, u16 br_mode)
{
 struct hwrm_func_cfg_input req = {0};
 int rc;

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_FUNC_CFG, -1, -1);
 req.fid = cpu_to_le16(0xffff);
 req.enables = cpu_to_le32(FUNC_CFG_REQ_ENABLES_EVB_MODE);
 if (br_mode == BRIDGE_MODE_VEB)
  req.evb_mode = FUNC_CFG_REQ_EVB_MODE_VEB;
 else if (br_mode == BRIDGE_MODE_VEPA)
  req.evb_mode = FUNC_CFG_REQ_EVB_MODE_VEPA;
 else
  return -EINVAL;
 rc = hwrm_send_message(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
 return rc;
}
