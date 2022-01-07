
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct hwrm_vnic_rss_cos_lb_ctx_alloc_output {int rss_cos_lb_ctx_id; } ;
struct hwrm_vnic_rss_cos_lb_ctx_alloc_input {int member_0; } ;
struct bnxt {int hwrm_cmd_lock; TYPE_1__* vnic_info; struct hwrm_vnic_rss_cos_lb_ctx_alloc_output* hwrm_cmd_resp_addr; } ;
typedef int req ;
struct TYPE_2__ {int * fw_rss_cos_lb_ctx; } ;


 int HWRM_CMD_TIMEOUT ;
 int HWRM_VNIC_RSS_COS_LB_CTX_ALLOC ;
 int _hwrm_send_message (struct bnxt*,struct hwrm_vnic_rss_cos_lb_ctx_alloc_input*,int,int ) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_vnic_rss_cos_lb_ctx_alloc_input*,int ,int,int) ;
 int le16_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int bnxt_hwrm_vnic_ctx_alloc(struct bnxt *bp, u16 vnic_id, u16 ctx_idx)
{
 int rc;
 struct hwrm_vnic_rss_cos_lb_ctx_alloc_input req = {0};
 struct hwrm_vnic_rss_cos_lb_ctx_alloc_output *resp =
      bp->hwrm_cmd_resp_addr;

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_VNIC_RSS_COS_LB_CTX_ALLOC, -1,
          -1);

 mutex_lock(&bp->hwrm_cmd_lock);
 rc = _hwrm_send_message(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
 if (!rc)
  bp->vnic_info[vnic_id].fw_rss_cos_lb_ctx[ctx_idx] =
   le16_to_cpu(resp->rss_cos_lb_ctx_id);
 mutex_unlock(&bp->hwrm_cmd_lock);

 return rc;
}
