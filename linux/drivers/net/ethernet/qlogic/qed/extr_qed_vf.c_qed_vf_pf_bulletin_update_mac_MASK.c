#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct vfpf_bulletin_update_mac_tlv {int /*<<< orphan*/  mac; } ;
struct qed_vf_iov {TYPE_1__* pf2vf_reply; int /*<<< orphan*/  offset; } ;
struct qed_hwfn {struct qed_vf_iov* vf_iov_info; } ;
struct TYPE_4__ {int /*<<< orphan*/  status; } ;
struct pfvf_def_resp_tlv {TYPE_2__ hdr; } ;
struct channel_list_end_tlv {int dummy; } ;
struct TYPE_3__ {struct pfvf_def_resp_tlv default_resp; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHANNEL_TLV_BULLETIN_UPDATE_MAC ; 
 int /*<<< orphan*/  CHANNEL_TLV_LIST_END ; 
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int /*<<< orphan*/  QED_MSG_IOV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct qed_hwfn*,int /*<<< orphan*/ *,int) ; 
 struct vfpf_bulletin_update_mac_tlv* FUNC4 (struct qed_hwfn*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct qed_hwfn*,int) ; 

int
FUNC6(struct qed_hwfn *p_hwfn,
			      u8 *p_mac)
{
	struct qed_vf_iov *p_iov = p_hwfn->vf_iov_info;
	struct vfpf_bulletin_update_mac_tlv *p_req;
	struct pfvf_def_resp_tlv *p_resp;
	int rc;

	if (!p_mac)
		return -EINVAL;

	/* clear mailbox and prep header tlv */
	p_req = FUNC4(p_hwfn, CHANNEL_TLV_BULLETIN_UPDATE_MAC,
			       sizeof(*p_req));
	FUNC1(p_req->mac, p_mac);
	FUNC0(p_hwfn, QED_MSG_IOV,
		   "Requesting bulletin update for MAC[%pM]\n", p_mac);

	/* add list termination tlv */
	FUNC2(p_hwfn, &p_iov->offset, CHANNEL_TLV_LIST_END,
		    sizeof(struct channel_list_end_tlv));

	p_resp = &p_iov->pf2vf_reply->default_resp;
	rc = FUNC3(p_hwfn, &p_resp->hdr.status, sizeof(*p_resp));
	FUNC5(p_hwfn, rc);
	return rc;
}