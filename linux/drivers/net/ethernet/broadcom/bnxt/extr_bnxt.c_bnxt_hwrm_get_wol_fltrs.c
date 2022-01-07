
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct hwrm_wol_filter_qcfg_output {scalar_t__ wol_type; int wol_filter_id; int next_handle; } ;
struct hwrm_wol_filter_qcfg_input {void* handle; void* port_id; int member_0; } ;
struct TYPE_2__ {scalar_t__ port_id; } ;
struct bnxt {int wol; int hwrm_cmd_lock; int wol_filter_id; TYPE_1__ pf; struct hwrm_wol_filter_qcfg_output* hwrm_cmd_resp_addr; } ;
typedef int req ;


 int HWRM_CMD_TIMEOUT ;
 int HWRM_WOL_FILTER_QCFG ;
 scalar_t__ WOL_FILTER_ALLOC_REQ_WOL_TYPE_MAGICPKT ;
 int _hwrm_send_message (struct bnxt*,struct hwrm_wol_filter_qcfg_input*,int,int ) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_wol_filter_qcfg_input*,int ,int,int) ;
 void* cpu_to_le16 (scalar_t__) ;
 scalar_t__ le16_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static u16 bnxt_hwrm_get_wol_fltrs(struct bnxt *bp, u16 handle)
{
 struct hwrm_wol_filter_qcfg_input req = {0};
 struct hwrm_wol_filter_qcfg_output *resp = bp->hwrm_cmd_resp_addr;
 u16 next_handle = 0;
 int rc;

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_WOL_FILTER_QCFG, -1, -1);
 req.port_id = cpu_to_le16(bp->pf.port_id);
 req.handle = cpu_to_le16(handle);
 mutex_lock(&bp->hwrm_cmd_lock);
 rc = _hwrm_send_message(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
 if (!rc) {
  next_handle = le16_to_cpu(resp->next_handle);
  if (next_handle != 0) {
   if (resp->wol_type ==
       WOL_FILTER_ALLOC_REQ_WOL_TYPE_MAGICPKT) {
    bp->wol = 1;
    bp->wol_filter_id = resp->wol_filter_id;
   }
  }
 }
 mutex_unlock(&bp->hwrm_cmd_lock);
 return next_handle;
}
