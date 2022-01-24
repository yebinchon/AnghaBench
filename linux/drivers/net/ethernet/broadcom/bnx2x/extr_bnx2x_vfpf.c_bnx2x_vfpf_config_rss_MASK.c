#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  length; } ;
struct TYPE_13__ {TYPE_4__ tl; } ;
struct vfpf_rss_tlv {int ind_table_size; TYPE_6__ first_tlv; int /*<<< orphan*/  rss_flags; int /*<<< orphan*/  rss_result_mask; int /*<<< orphan*/  rss_key_size; int /*<<< orphan*/  rss_key; int /*<<< orphan*/  ind_table; } ;
struct TYPE_12__ {int /*<<< orphan*/  status; } ;
struct pfvf_general_resp_tlv {TYPE_5__ hdr; } ;
struct channel_list_end_tlv {int dummy; } ;
struct bnx2x_config_rss_params {int rss_flags; int /*<<< orphan*/  rss_result_mask; int /*<<< orphan*/  rss_key; int /*<<< orphan*/  ind_table; } ;
struct bnx2x {int /*<<< orphan*/  vf2pf_mbox_mapping; TYPE_3__* vf2pf_mbox; } ;
struct TYPE_9__ {struct vfpf_rss_tlv update_rss; } ;
struct TYPE_8__ {struct pfvf_general_resp_tlv general_resp; } ;
struct TYPE_10__ {TYPE_2__ req; TYPE_1__ resp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  BNX2X_MSG_IOV ; 
 int BNX2X_RSS_IPV4 ; 
 int BNX2X_RSS_IPV4_TCP ; 
 int BNX2X_RSS_IPV4_UDP ; 
 int BNX2X_RSS_IPV6 ; 
 int BNX2X_RSS_IPV6_TCP ; 
 int BNX2X_RSS_IPV6_UDP ; 
 int BNX2X_RSS_MODE_DISABLED ; 
 int BNX2X_RSS_MODE_REGULAR ; 
 int BNX2X_RSS_SET_SRCH ; 
 int /*<<< orphan*/  CHANNEL_TLV_LIST_END ; 
 int /*<<< orphan*/  CHANNEL_TLV_UPDATE_RSS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PFVF_STATUS_SUCCESS ; 
 int T_ETH_INDIRECTION_TABLE_SIZE ; 
 int /*<<< orphan*/  T_ETH_RSS_KEY ; 
 int /*<<< orphan*/  VFPF_RSS_IPV4 ; 
 int /*<<< orphan*/  VFPF_RSS_IPV4_TCP ; 
 int /*<<< orphan*/  VFPF_RSS_IPV4_UDP ; 
 int /*<<< orphan*/  VFPF_RSS_IPV6 ; 
 int /*<<< orphan*/  VFPF_RSS_IPV6_TCP ; 
 int /*<<< orphan*/  VFPF_RSS_IPV6_UDP ; 
 int /*<<< orphan*/  VFPF_RSS_MODE_DISABLED ; 
 int /*<<< orphan*/  VFPF_RSS_MODE_REGULAR ; 
 int /*<<< orphan*/  VFPF_RSS_SET_SRCH ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,struct vfpf_rss_tlv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,struct vfpf_rss_tlv*) ; 
 int FUNC4 (struct bnx2x*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*,TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC8(struct bnx2x *bp,
			  struct bnx2x_config_rss_params *params)
{
	struct pfvf_general_resp_tlv *resp = &bp->vf2pf_mbox->resp.general_resp;
	struct vfpf_rss_tlv *req = &bp->vf2pf_mbox->req.update_rss;
	int rc = 0;

	/* clear mailbox and prep first tlv */
	FUNC6(bp, &req->first_tlv, CHANNEL_TLV_UPDATE_RSS,
			sizeof(*req));

	/* add list termination tlv */
	FUNC2(bp, req, req->first_tlv.tl.length, CHANNEL_TLV_LIST_END,
		      sizeof(struct channel_list_end_tlv));

	FUNC7(req->ind_table, params->ind_table, T_ETH_INDIRECTION_TABLE_SIZE);
	FUNC7(req->rss_key, params->rss_key, sizeof(params->rss_key));
	req->ind_table_size = T_ETH_INDIRECTION_TABLE_SIZE;
	req->rss_key_size = T_ETH_RSS_KEY;
	req->rss_result_mask = params->rss_result_mask;

	/* flags handled individually for backward/forward compatibility */
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

	FUNC1(BNX2X_MSG_IOV, "rss flags %x\n", req->rss_flags);

	/* output tlvs list */
	FUNC3(bp, req);

	/* send message to pf */
	rc = FUNC4(bp, &resp->hdr.status, bp->vf2pf_mbox_mapping);
	if (rc) {
		FUNC0("failed to send message to pf. rc was %d\n", rc);
		goto out;
	}

	if (resp->hdr.status != PFVF_STATUS_SUCCESS) {
		/* Since older drivers don't support this feature (and VF has
		 * no way of knowing other than failing this), don't propagate
		 * an error in this case.
		 */
		FUNC1(BNX2X_MSG_IOV,
		   "Failed to send rss message to PF over VF-PF channel [%d]\n",
		   resp->hdr.status);
	}
out:
	FUNC5(bp, &req->first_tlv);

	return rc;
}