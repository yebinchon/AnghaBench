#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct vfpf_stop_rxqs_tlv {int num_rxqs; int /*<<< orphan*/  cqe_completion; int /*<<< orphan*/  rx_qid; } ;
struct qed_iov_vf_mbx {TYPE_1__* req_virt; } ;
struct qed_vf_info {int /*<<< orphan*/  relative_vf_id; struct qed_iov_vf_mbx vf_mbx; } ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct pfvf_def_resp_tlv {int dummy; } ;
struct TYPE_2__ {struct vfpf_stop_rxqs_tlv stop_rxqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHANNEL_TLV_STOP_RXQS ; 
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ PFVF_STATUS_FAILURE ; 
 scalar_t__ PFVF_STATUS_NOT_SUPPORTED ; 
 scalar_t__ PFVF_STATUS_SUCCESS ; 
 scalar_t__ QED_IOV_QID_INVALID ; 
 int /*<<< orphan*/  QED_MSG_IOV ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,struct qed_ptt*,struct qed_vf_info*,int /*<<< orphan*/ ,int,scalar_t__) ; 
 scalar_t__ FUNC2 (struct qed_hwfn*,struct qed_vf_info*,int) ; 
 int FUNC3 (struct qed_hwfn*,struct qed_vf_info*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct qed_hwfn *p_hwfn,
				     struct qed_ptt *p_ptt,
				     struct qed_vf_info *vf)
{
	u16 length = sizeof(struct pfvf_def_resp_tlv);
	struct qed_iov_vf_mbx *mbx = &vf->vf_mbx;
	u8 status = PFVF_STATUS_FAILURE;
	struct vfpf_stop_rxqs_tlv *req;
	u8 qid_usage_idx;
	int rc;

	/* There has never been an official driver that used this interface
	 * for stopping multiple queues, and it is now considered deprecated.
	 * Validate this isn't used here.
	 */
	req = &mbx->req_virt->stop_rxqs;
	if (req->num_rxqs != 1) {
		FUNC0(p_hwfn, QED_MSG_IOV,
			   "Odd; VF[%d] tried stopping multiple Rx queues\n",
			   vf->relative_vf_id);
		status = PFVF_STATUS_NOT_SUPPORTED;
		goto out;
	}

	/* Find which qid-index is associated with the queue */
	qid_usage_idx = FUNC2(p_hwfn, vf, false);
	if (qid_usage_idx == QED_IOV_QID_INVALID)
		goto out;

	rc = FUNC3(p_hwfn, vf, req->rx_qid,
				  qid_usage_idx, req->cqe_completion);
	if (!rc)
		status = PFVF_STATUS_SUCCESS;
out:
	FUNC1(p_hwfn, p_ptt, vf, CHANNEL_TLV_STOP_RXQS,
			     length, status);
}