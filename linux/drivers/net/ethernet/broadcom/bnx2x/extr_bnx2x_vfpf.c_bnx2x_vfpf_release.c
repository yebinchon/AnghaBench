
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


typedef int u32 ;
struct TYPE_11__ {int length; } ;
struct TYPE_13__ {TYPE_4__ tl; } ;
struct vfpf_release_tlv {int vf_id; TYPE_6__ first_tlv; } ;
struct TYPE_12__ {scalar_t__ status; } ;
struct pfvf_general_resp_tlv {TYPE_5__ hdr; } ;
struct channel_list_end_tlv {int dummy; } ;
struct bnx2x {int vf2pf_mbox_mapping; TYPE_3__* vf2pf_mbox; } ;
struct TYPE_9__ {struct pfvf_general_resp_tlv general_resp; } ;
struct TYPE_8__ {struct vfpf_release_tlv release; } ;
struct TYPE_10__ {TYPE_2__ resp; TYPE_1__ req; } ;


 int BNX2X_ERR (char*,scalar_t__) ;
 int BNX2X_MSG_SP ;
 int CHANNEL_TLV_LIST_END ;
 int CHANNEL_TLV_RELEASE ;
 int DP (int ,char*) ;
 int EAGAIN ;
 scalar_t__ PFVF_STATUS_SUCCESS ;
 int bnx2x_add_tlv (struct bnx2x*,struct vfpf_release_tlv*,int ,int ,int) ;
 int bnx2x_dp_tlv_list (struct bnx2x*,struct vfpf_release_tlv*) ;
 scalar_t__ bnx2x_get_vf_id (struct bnx2x*,int*) ;
 int bnx2x_send_msg2pf (struct bnx2x*,scalar_t__*,int ) ;
 int bnx2x_vfpf_finalize (struct bnx2x*,TYPE_6__*) ;
 int bnx2x_vfpf_prep (struct bnx2x*,TYPE_6__*,int ,int) ;

int bnx2x_vfpf_release(struct bnx2x *bp)
{
 struct vfpf_release_tlv *req = &bp->vf2pf_mbox->req.release;
 struct pfvf_general_resp_tlv *resp = &bp->vf2pf_mbox->resp.general_resp;
 u32 rc, vf_id;


 bnx2x_vfpf_prep(bp, &req->first_tlv, CHANNEL_TLV_RELEASE, sizeof(*req));

 if (bnx2x_get_vf_id(bp, &vf_id)) {
  rc = -EAGAIN;
  goto out;
 }

 req->vf_id = vf_id;


 bnx2x_add_tlv(bp, req, req->first_tlv.tl.length, CHANNEL_TLV_LIST_END,
        sizeof(struct channel_list_end_tlv));


 bnx2x_dp_tlv_list(bp, req);


 rc = bnx2x_send_msg2pf(bp, &resp->hdr.status, bp->vf2pf_mbox_mapping);

 if (rc)

  goto out;

 if (resp->hdr.status == PFVF_STATUS_SUCCESS) {

  DP(BNX2X_MSG_SP, "vf released\n");
 } else {

  BNX2X_ERR("PF failed our release request - are we out of sync? Response status: %d\n",
     resp->hdr.status);
  rc = -EAGAIN;
  goto out;
 }
out:
 bnx2x_vfpf_finalize(bp, &req->first_tlv);

 return rc;
}
