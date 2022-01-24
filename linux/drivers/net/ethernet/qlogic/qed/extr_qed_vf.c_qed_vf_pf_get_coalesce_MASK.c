#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct vfpf_read_coal_req_tlv {int is_rx; int /*<<< orphan*/  qid; } ;
struct qed_vf_iov {TYPE_2__* pf2vf_reply; int /*<<< orphan*/  offset; } ;
struct TYPE_4__ {int /*<<< orphan*/  queue_id; } ;
struct qed_queue_cid {scalar_t__ b_is_rx; TYPE_1__ rel; } ;
struct qed_hwfn {struct qed_vf_iov* vf_iov_info; } ;
struct TYPE_6__ {scalar_t__ status; } ;
struct pfvf_read_coal_resp_tlv {int /*<<< orphan*/  coal; TYPE_3__ hdr; } ;
struct channel_list_end_tlv {int dummy; } ;
struct TYPE_5__ {struct pfvf_read_coal_resp_tlv read_coal_resp; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHANNEL_TLV_COALESCE_READ ; 
 int /*<<< orphan*/  CHANNEL_TLV_LIST_END ; 
 scalar_t__ PFVF_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct qed_hwfn*,scalar_t__*,int) ; 
 struct vfpf_read_coal_req_tlv* FUNC2 (struct qed_hwfn*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*,int) ; 

int FUNC4(struct qed_hwfn *p_hwfn,
			   u16 *p_coal, struct qed_queue_cid *p_cid)
{
	struct qed_vf_iov *p_iov = p_hwfn->vf_iov_info;
	struct pfvf_read_coal_resp_tlv *resp;
	struct vfpf_read_coal_req_tlv *req;
	int rc;

	/* clear mailbox and prep header tlv */
	req = FUNC2(p_hwfn, CHANNEL_TLV_COALESCE_READ, sizeof(*req));
	req->qid = p_cid->rel.queue_id;
	req->is_rx = p_cid->b_is_rx ? 1 : 0;

	FUNC0(p_hwfn, &p_iov->offset, CHANNEL_TLV_LIST_END,
		    sizeof(struct channel_list_end_tlv));
	resp = &p_iov->pf2vf_reply->read_coal_resp;

	rc = FUNC1(p_hwfn, &resp->hdr.status, sizeof(*resp));
	if (rc)
		goto exit;

	if (resp->hdr.status != PFVF_STATUS_SUCCESS)
		goto exit;

	*p_coal = resp->coal;
exit:
	FUNC3(p_hwfn, rc);

	return rc;
}