
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hwrm_func_qcfg_output {int alloc_tx_rings; } ;
struct hwrm_func_qcfg_input {int fid; int member_0; } ;
struct bnxt {int hwrm_spec_code; struct hwrm_func_qcfg_output* hwrm_cmd_resp_addr; } ;
typedef int req ;


 int HWRM_CMD_TIMEOUT ;
 int HWRM_FUNC_QCFG ;
 int _hwrm_send_message (struct bnxt*,struct hwrm_func_qcfg_input*,int,int ) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_func_qcfg_input*,int ,int,int) ;
 int cpu_to_le16 (int ) ;
 int le16_to_cpu (int ) ;

int __bnxt_hwrm_get_tx_rings(struct bnxt *bp, u16 fid, int *tx_rings)
{
 struct hwrm_func_qcfg_output *resp = bp->hwrm_cmd_resp_addr;
 struct hwrm_func_qcfg_input req = {0};
 int rc;

 if (bp->hwrm_spec_code < 0x10601)
  return 0;

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_FUNC_QCFG, -1, -1);
 req.fid = cpu_to_le16(fid);
 rc = _hwrm_send_message(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
 if (!rc)
  *tx_rings = le16_to_cpu(resp->alloc_tx_rings);

 return rc;
}
