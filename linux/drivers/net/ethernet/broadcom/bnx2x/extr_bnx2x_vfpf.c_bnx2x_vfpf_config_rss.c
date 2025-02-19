
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int length; } ;
struct TYPE_13__ {TYPE_4__ tl; } ;
struct vfpf_rss_tlv {int ind_table_size; TYPE_6__ first_tlv; int rss_flags; int rss_result_mask; int rss_key_size; int rss_key; int ind_table; } ;
struct TYPE_12__ {int status; } ;
struct pfvf_general_resp_tlv {TYPE_5__ hdr; } ;
struct channel_list_end_tlv {int dummy; } ;
struct bnx2x_config_rss_params {int rss_flags; int rss_result_mask; int rss_key; int ind_table; } ;
struct bnx2x {int vf2pf_mbox_mapping; TYPE_3__* vf2pf_mbox; } ;
struct TYPE_9__ {struct vfpf_rss_tlv update_rss; } ;
struct TYPE_8__ {struct pfvf_general_resp_tlv general_resp; } ;
struct TYPE_10__ {TYPE_2__ req; TYPE_1__ resp; } ;


 int BNX2X_ERR (char*,int) ;
 int BNX2X_MSG_IOV ;
 int BNX2X_RSS_IPV4 ;
 int BNX2X_RSS_IPV4_TCP ;
 int BNX2X_RSS_IPV4_UDP ;
 int BNX2X_RSS_IPV6 ;
 int BNX2X_RSS_IPV6_TCP ;
 int BNX2X_RSS_IPV6_UDP ;
 int BNX2X_RSS_MODE_DISABLED ;
 int BNX2X_RSS_MODE_REGULAR ;
 int BNX2X_RSS_SET_SRCH ;
 int CHANNEL_TLV_LIST_END ;
 int CHANNEL_TLV_UPDATE_RSS ;
 int DP (int ,char*,int ) ;
 int PFVF_STATUS_SUCCESS ;
 int T_ETH_INDIRECTION_TABLE_SIZE ;
 int T_ETH_RSS_KEY ;
 int VFPF_RSS_IPV4 ;
 int VFPF_RSS_IPV4_TCP ;
 int VFPF_RSS_IPV4_UDP ;
 int VFPF_RSS_IPV6 ;
 int VFPF_RSS_IPV6_TCP ;
 int VFPF_RSS_IPV6_UDP ;
 int VFPF_RSS_MODE_DISABLED ;
 int VFPF_RSS_MODE_REGULAR ;
 int VFPF_RSS_SET_SRCH ;
 int bnx2x_add_tlv (struct bnx2x*,struct vfpf_rss_tlv*,int ,int ,int) ;
 int bnx2x_dp_tlv_list (struct bnx2x*,struct vfpf_rss_tlv*) ;
 int bnx2x_send_msg2pf (struct bnx2x*,int *,int ) ;
 int bnx2x_vfpf_finalize (struct bnx2x*,TYPE_6__*) ;
 int bnx2x_vfpf_prep (struct bnx2x*,TYPE_6__*,int ,int) ;
 int memcpy (int ,int ,int) ;

int bnx2x_vfpf_config_rss(struct bnx2x *bp,
     struct bnx2x_config_rss_params *params)
{
 struct pfvf_general_resp_tlv *resp = &bp->vf2pf_mbox->resp.general_resp;
 struct vfpf_rss_tlv *req = &bp->vf2pf_mbox->req.update_rss;
 int rc = 0;


 bnx2x_vfpf_prep(bp, &req->first_tlv, CHANNEL_TLV_UPDATE_RSS,
   sizeof(*req));


 bnx2x_add_tlv(bp, req, req->first_tlv.tl.length, CHANNEL_TLV_LIST_END,
        sizeof(struct channel_list_end_tlv));

 memcpy(req->ind_table, params->ind_table, T_ETH_INDIRECTION_TABLE_SIZE);
 memcpy(req->rss_key, params->rss_key, sizeof(params->rss_key));
 req->ind_table_size = T_ETH_INDIRECTION_TABLE_SIZE;
 req->rss_key_size = T_ETH_RSS_KEY;
 req->rss_result_mask = params->rss_result_mask;


 if (params->rss_flags & (1 << BNX2X_RSS_MODE_DISABLED))
  req->rss_flags |= VFPF_RSS_MODE_DISABLED;
 if (params->rss_flags & (1 << BNX2X_RSS_MODE_REGULAR))
  req->rss_flags |= VFPF_RSS_MODE_REGULAR;
 if (params->rss_flags & (1 << BNX2X_RSS_SET_SRCH))
  req->rss_flags |= VFPF_RSS_SET_SRCH;
 if (params->rss_flags & (1 << BNX2X_RSS_IPV4))
  req->rss_flags |= VFPF_RSS_IPV4;
 if (params->rss_flags & (1 << BNX2X_RSS_IPV4_TCP))
  req->rss_flags |= VFPF_RSS_IPV4_TCP;
 if (params->rss_flags & (1 << BNX2X_RSS_IPV4_UDP))
  req->rss_flags |= VFPF_RSS_IPV4_UDP;
 if (params->rss_flags & (1 << BNX2X_RSS_IPV6))
  req->rss_flags |= VFPF_RSS_IPV6;
 if (params->rss_flags & (1 << BNX2X_RSS_IPV6_TCP))
  req->rss_flags |= VFPF_RSS_IPV6_TCP;
 if (params->rss_flags & (1 << BNX2X_RSS_IPV6_UDP))
  req->rss_flags |= VFPF_RSS_IPV6_UDP;

 DP(BNX2X_MSG_IOV, "rss flags %x\n", req->rss_flags);


 bnx2x_dp_tlv_list(bp, req);


 rc = bnx2x_send_msg2pf(bp, &resp->hdr.status, bp->vf2pf_mbox_mapping);
 if (rc) {
  BNX2X_ERR("failed to send message to pf. rc was %d\n", rc);
  goto out;
 }

 if (resp->hdr.status != PFVF_STATUS_SUCCESS) {




  DP(BNX2X_MSG_IOV,
     "Failed to send rss message to PF over VF-PF channel [%d]\n",
     resp->hdr.status);
 }
out:
 bnx2x_vfpf_finalize(bp, &req->first_tlv);

 return rc;
}
