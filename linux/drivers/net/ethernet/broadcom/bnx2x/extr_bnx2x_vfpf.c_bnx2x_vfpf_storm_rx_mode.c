
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
struct vfpf_set_q_filters_tlv {TYPE_6__ first_tlv; scalar_t__ vf_qid; int flags; int rx_mask; } ;
struct TYPE_12__ {int status; } ;
struct pfvf_general_resp_tlv {TYPE_5__ hdr; } ;
struct channel_list_end_tlv {int dummy; } ;
struct bnx2x {int rx_mode; int vf2pf_mbox_mapping; scalar_t__ accept_any_vlan; TYPE_3__* vf2pf_mbox; } ;
struct TYPE_9__ {struct pfvf_general_resp_tlv general_resp; } ;
struct TYPE_8__ {struct vfpf_set_q_filters_tlv set_q_filters; } ;
struct TYPE_10__ {TYPE_2__ resp; TYPE_1__ req; } ;


 int BNX2X_ERR (char*,int) ;
 int BNX2X_RX_MODE_NONE ;
 int BNX2X_RX_MODE_PROMISC ;
 int CHANNEL_TLV_LIST_END ;
 int CHANNEL_TLV_SET_Q_FILTERS ;
 int DP (int ,char*,int) ;
 int EINVAL ;
 int NETIF_MSG_IFUP ;
 int PFVF_STATUS_SUCCESS ;
 int VFPF_RX_MASK_ACCEPT_ANY_VLAN ;
 int VFPF_RX_MASK_ACCEPT_BROADCAST ;
 int VFPF_RX_MASK_ACCEPT_MATCHED_MULTICAST ;
 int VFPF_RX_MASK_ACCEPT_MATCHED_UNICAST ;
 int VFPF_RX_MASK_ACCEPT_NONE ;
 int VFPF_SET_Q_FILTERS_RX_MASK_CHANGED ;
 int bnx2x_add_tlv (struct bnx2x*,struct vfpf_set_q_filters_tlv*,int ,int ,int) ;
 int bnx2x_dp_tlv_list (struct bnx2x*,struct vfpf_set_q_filters_tlv*) ;
 int bnx2x_send_msg2pf (struct bnx2x*,int*,int ) ;
 int bnx2x_vfpf_finalize (struct bnx2x*,TYPE_6__*) ;
 int bnx2x_vfpf_prep (struct bnx2x*,TYPE_6__*,int ,int) ;

int bnx2x_vfpf_storm_rx_mode(struct bnx2x *bp)
{
 int mode = bp->rx_mode;
 struct vfpf_set_q_filters_tlv *req = &bp->vf2pf_mbox->req.set_q_filters;
 struct pfvf_general_resp_tlv *resp = &bp->vf2pf_mbox->resp.general_resp;
 int rc;


 bnx2x_vfpf_prep(bp, &req->first_tlv, CHANNEL_TLV_SET_Q_FILTERS,
   sizeof(*req));

 DP(NETIF_MSG_IFUP, "Rx mode is %d\n", mode);


 if (mode == BNX2X_RX_MODE_NONE) {
  req->rx_mask = VFPF_RX_MASK_ACCEPT_NONE;
 } else {



  req->rx_mask = VFPF_RX_MASK_ACCEPT_MATCHED_MULTICAST;
  req->rx_mask |= VFPF_RX_MASK_ACCEPT_MATCHED_UNICAST;
  req->rx_mask |= VFPF_RX_MASK_ACCEPT_BROADCAST;
  if (mode == BNX2X_RX_MODE_PROMISC)
   req->rx_mask |= VFPF_RX_MASK_ACCEPT_ANY_VLAN;
 }

 if (bp->accept_any_vlan)
  req->rx_mask |= VFPF_RX_MASK_ACCEPT_ANY_VLAN;

 req->flags |= VFPF_SET_Q_FILTERS_RX_MASK_CHANGED;
 req->vf_qid = 0;


 bnx2x_add_tlv(bp, req, req->first_tlv.tl.length, CHANNEL_TLV_LIST_END,
        sizeof(struct channel_list_end_tlv));


 bnx2x_dp_tlv_list(bp, req);

 rc = bnx2x_send_msg2pf(bp, &resp->hdr.status, bp->vf2pf_mbox_mapping);
 if (rc)
  BNX2X_ERR("Sending a message failed: %d\n", rc);

 if (resp->hdr.status != PFVF_STATUS_SUCCESS) {
  BNX2X_ERR("Set Rx mode failed: %d\n", resp->hdr.status);
  rc = -EINVAL;
 }

 bnx2x_vfpf_finalize(bp, &req->first_tlv);

 return rc;
}
