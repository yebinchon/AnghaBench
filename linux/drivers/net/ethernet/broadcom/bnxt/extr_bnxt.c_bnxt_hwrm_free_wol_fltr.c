
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hwrm_wol_filter_free_input {int wol_filter_id; int enables; int port_id; int member_0; } ;
struct TYPE_2__ {int port_id; } ;
struct bnxt {int wol_filter_id; TYPE_1__ pf; } ;
typedef int req ;


 int HWRM_CMD_TIMEOUT ;
 int HWRM_WOL_FILTER_FREE ;
 int WOL_FILTER_FREE_REQ_ENABLES_WOL_FILTER_ID ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_wol_filter_free_input*,int ,int,int) ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int hwrm_send_message (struct bnxt*,struct hwrm_wol_filter_free_input*,int,int ) ;

int bnxt_hwrm_free_wol_fltr(struct bnxt *bp)
{
 struct hwrm_wol_filter_free_input req = {0};
 int rc;

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_WOL_FILTER_FREE, -1, -1);
 req.port_id = cpu_to_le16(bp->pf.port_id);
 req.enables = cpu_to_le32(WOL_FILTER_FREE_REQ_ENABLES_WOL_FILTER_ID);
 req.wol_filter_id = bp->wol_filter_id;
 rc = hwrm_send_message(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
 return rc;
}
