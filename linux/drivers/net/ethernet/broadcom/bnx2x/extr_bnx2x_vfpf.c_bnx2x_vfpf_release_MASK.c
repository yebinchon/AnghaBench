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
typedef  int u32 ;
struct TYPE_11__ {int /*<<< orphan*/  length; } ;
struct TYPE_13__ {TYPE_4__ tl; } ;
struct vfpf_release_tlv {int vf_id; TYPE_6__ first_tlv; } ;
struct TYPE_12__ {scalar_t__ status; } ;
struct pfvf_general_resp_tlv {TYPE_5__ hdr; } ;
struct channel_list_end_tlv {int dummy; } ;
struct bnx2x {int /*<<< orphan*/  vf2pf_mbox_mapping; TYPE_3__* vf2pf_mbox; } ;
struct TYPE_9__ {struct pfvf_general_resp_tlv general_resp; } ;
struct TYPE_8__ {struct vfpf_release_tlv release; } ;
struct TYPE_10__ {TYPE_2__ resp; TYPE_1__ req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  BNX2X_MSG_SP ; 
 int /*<<< orphan*/  CHANNEL_TLV_LIST_END ; 
 int /*<<< orphan*/  CHANNEL_TLV_RELEASE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int EAGAIN ; 
 scalar_t__ PFVF_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,struct vfpf_release_tlv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,struct vfpf_release_tlv*) ; 
 scalar_t__ FUNC4 (struct bnx2x*,int*) ; 
 int FUNC5 (struct bnx2x*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x*,TYPE_6__*,int /*<<< orphan*/ ,int) ; 

int FUNC8(struct bnx2x *bp)
{
	struct vfpf_release_tlv *req = &bp->vf2pf_mbox->req.release;
	struct pfvf_general_resp_tlv *resp = &bp->vf2pf_mbox->resp.general_resp;
	u32 rc, vf_id;

	/* clear mailbox and prep first tlv */
	FUNC7(bp, &req->first_tlv, CHANNEL_TLV_RELEASE, sizeof(*req));

	if (FUNC4(bp, &vf_id)) {
		rc = -EAGAIN;
		goto out;
	}

	req->vf_id = vf_id;

	/* add list termination tlv */
	FUNC2(bp, req, req->first_tlv.tl.length, CHANNEL_TLV_LIST_END,
		      sizeof(struct channel_list_end_tlv));

	/* output tlvs list */
	FUNC3(bp, req);

	/* send release request */
	rc = FUNC5(bp, &resp->hdr.status, bp->vf2pf_mbox_mapping);

	if (rc)
		/* PF timeout */
		goto out;

	if (resp->hdr.status == PFVF_STATUS_SUCCESS) {
		/* PF released us */
		FUNC1(BNX2X_MSG_SP, "vf released\n");
	} else {
		/* PF reports error */
		FUNC0("PF failed our release request - are we out of sync? Response status: %d\n",
			  resp->hdr.status);
		rc = -EAGAIN;
		goto out;
	}
out:
	FUNC6(bp, &req->first_tlv);

	return rc;
}