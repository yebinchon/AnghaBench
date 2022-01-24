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
typedef  union pfvf_tlvs {int dummy; } pfvf_tlvs ;
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct qed_vf_info {int /*<<< orphan*/  relative_vf_id; } ;
struct qed_iov_vf_mbx {int /*<<< orphan*/ * offset; scalar_t__ reply_virt; } ;
struct qed_hwfn {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  status; } ;
struct pfvf_def_resp_tlv {TYPE_1__ hdr; } ;
struct channel_list_end_tlv {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  CHANNEL_TLV_LIST_END ; 
 int /*<<< orphan*/  CHANNEL_TLV_VPORT_UPDATE ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PFVF_STATUS_NOT_SUPPORTED ; 
 scalar_t__ QED_IOV_VP_UPDATE_MAX ; 
 int /*<<< orphan*/  QED_MSG_IOV ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 struct pfvf_def_resp_tlv* FUNC3 (struct qed_hwfn*,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct qed_hwfn*,scalar_t__) ; 

__attribute__((used)) static u16 FUNC5(struct qed_hwfn *p_hwfn,
					    struct qed_vf_info *p_vf,
					    struct qed_iov_vf_mbx *p_mbx,
					    u8 status,
					    u16 tlvs_mask, u16 tlvs_accepted)
{
	struct pfvf_def_resp_tlv *resp;
	u16 size, total_len, i;

	FUNC2(p_mbx->reply_virt, 0, sizeof(union pfvf_tlvs));
	p_mbx->offset = (u8 *)p_mbx->reply_virt;
	size = sizeof(struct pfvf_def_resp_tlv);
	total_len = size;

	FUNC3(p_hwfn, &p_mbx->offset, CHANNEL_TLV_VPORT_UPDATE, size);

	/* Prepare response for all extended tlvs if they are found by PF */
	for (i = 0; i < QED_IOV_VP_UPDATE_MAX; i++) {
		if (!(tlvs_mask & FUNC0(i)))
			continue;

		resp = FUNC3(p_hwfn, &p_mbx->offset,
				   FUNC4(p_hwfn, i), size);

		if (tlvs_accepted & FUNC0(i))
			resp->hdr.status = status;
		else
			resp->hdr.status = PFVF_STATUS_NOT_SUPPORTED;

		FUNC1(p_hwfn,
			   QED_MSG_IOV,
			   "VF[%d] - vport_update response: TLV %d, status %02x\n",
			   p_vf->relative_vf_id,
			   FUNC4(p_hwfn, i), resp->hdr.status);

		total_len += size;
	}

	FUNC3(p_hwfn, &p_mbx->offset, CHANNEL_TLV_LIST_END,
		    sizeof(struct channel_list_end_tlv));

	return total_len;
}