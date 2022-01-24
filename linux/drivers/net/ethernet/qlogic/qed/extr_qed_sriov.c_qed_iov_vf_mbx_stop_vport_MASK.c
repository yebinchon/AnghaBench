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
struct qed_vf_info {int spoof_chk; int b_malicious; int /*<<< orphan*/  shadow_config; scalar_t__ configured_features; int /*<<< orphan*/  vport_id; int /*<<< orphan*/  opaque_fid; int /*<<< orphan*/  abs_vf_id; int /*<<< orphan*/  vport_instance; } ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct pfvf_def_resp_tlv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHANNEL_TLV_VPORT_TEARDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PFVF_STATUS_FAILURE ; 
 int /*<<< orphan*/  PFVF_STATUS_MALICIOUS ; 
 int /*<<< orphan*/  PFVF_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*,struct qed_ptt*,struct qed_vf_info*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct qed_hwfn*,struct qed_vf_info*) ; 
 scalar_t__ FUNC5 (struct qed_hwfn*,struct qed_vf_info*) ; 
 int FUNC6 (struct qed_hwfn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct qed_hwfn *p_hwfn,
				      struct qed_ptt *p_ptt,
				      struct qed_vf_info *vf)
{
	u8 status = PFVF_STATUS_SUCCESS;
	int rc;

	vf->vport_instance--;
	vf->spoof_chk = false;

	if ((FUNC4(p_hwfn, vf)) ||
	    (FUNC5(p_hwfn, vf))) {
		vf->b_malicious = true;
		FUNC1(p_hwfn,
			  "VF [%02x] - considered malicious; Unable to stop RX/TX queues\n",
			  vf->abs_vf_id);
		status = PFVF_STATUS_MALICIOUS;
		goto out;
	}

	rc = FUNC6(p_hwfn, vf->opaque_fid, vf->vport_id);
	if (rc) {
		FUNC0(p_hwfn, "qed_iov_vf_mbx_stop_vport returned error %d\n",
		       rc);
		status = PFVF_STATUS_FAILURE;
	}

	/* Forget the configuration on the vport */
	vf->configured_features = 0;
	FUNC2(&vf->shadow_config, 0, sizeof(vf->shadow_config));

out:
	FUNC3(p_hwfn, p_ptt, vf, CHANNEL_TLV_VPORT_TEARDOWN,
			     sizeof(struct pfvf_def_resp_tlv), status);
}