#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct qed_vf_info {scalar_t__ state; int /*<<< orphan*/  opaque_fid; int /*<<< orphan*/  concrete_fid; } ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct pfvf_def_resp_tlv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHANNEL_TLV_RELEASE ; 
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*,int) ; 
 int /*<<< orphan*/  PFVF_STATUS_FAILURE ; 
 int /*<<< orphan*/  PFVF_STATUS_SUCCESS ; 
 scalar_t__ VF_FREE ; 
 scalar_t__ VF_STOPPED ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,struct qed_ptt*,struct qed_vf_info*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*,struct qed_vf_info*) ; 
 int FUNC3 (struct qed_hwfn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct qed_hwfn *p_hwfn,
				   struct qed_ptt *p_ptt,
				   struct qed_vf_info *p_vf)
{
	u16 length = sizeof(struct pfvf_def_resp_tlv);
	u8 status = PFVF_STATUS_SUCCESS;
	int rc = 0;

	FUNC2(p_hwfn, p_vf);

	if (p_vf->state != VF_STOPPED && p_vf->state != VF_FREE) {
		/* Stopping the VF */
		rc = FUNC3(p_hwfn, p_vf->concrete_fid,
				    p_vf->opaque_fid);

		if (rc) {
			FUNC0(p_hwfn, "qed_sp_vf_stop returned error %d\n",
			       rc);
			status = PFVF_STATUS_FAILURE;
		}

		p_vf->state = VF_STOPPED;
	}

	FUNC1(p_hwfn, p_ptt, p_vf, CHANNEL_TLV_RELEASE,
			     length, status);
}