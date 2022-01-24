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
typedef  scalar_t__ u16 ;
struct qed_iov_vf_mbx {int dummy; } ;
struct qed_vf_info {int /*<<< orphan*/  relative_vf_id; int /*<<< orphan*/  vport_id; int /*<<< orphan*/  opaque_fid; int /*<<< orphan*/  abs_vf_id; int /*<<< orphan*/  vport_instance; struct qed_iov_vf_mbx vf_mbx; } ;
struct qed_sp_vport_update_params {int /*<<< orphan*/ * rss_params; int /*<<< orphan*/  vport_id; int /*<<< orphan*/  opaque_fid; } ;
struct qed_sge_tpa_params {int dummy; } ;
struct qed_rss_params {int dummy; } ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
typedef  int /*<<< orphan*/  params ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  PFVF_STATUS_FAILURE ; 
 int /*<<< orphan*/  PFVF_STATUS_NOT_SUPPORTED ; 
 int /*<<< orphan*/  PFVF_STATUS_SUCCESS ; 
 int /*<<< orphan*/  QED_MSG_IOV ; 
 int /*<<< orphan*/  QED_SPQ_MODE_EBLOCK ; 
 int /*<<< orphan*/  FUNC1 (struct qed_sp_vport_update_params*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct qed_hwfn*,int /*<<< orphan*/ ,struct qed_sp_vport_update_params*,scalar_t__*) ; 
 scalar_t__ FUNC3 (struct qed_hwfn*,struct qed_vf_info*,struct qed_iov_vf_mbx*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct qed_hwfn*,struct qed_ptt*,struct qed_vf_info*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct qed_hwfn*,struct qed_sp_vport_update_params*,struct qed_iov_vf_mbx*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (struct qed_hwfn*,struct qed_sp_vport_update_params*,struct qed_iov_vf_mbx*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (struct qed_hwfn*,struct qed_sp_vport_update_params*,struct qed_iov_vf_mbx*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (struct qed_hwfn*,struct qed_sp_vport_update_params*,struct qed_iov_vf_mbx*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (struct qed_hwfn*,struct qed_vf_info*,struct qed_sp_vport_update_params*,struct qed_rss_params*,struct qed_iov_vf_mbx*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (struct qed_hwfn*,struct qed_vf_info*,struct qed_sp_vport_update_params*,struct qed_sge_tpa_params*,struct qed_iov_vf_mbx*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (struct qed_hwfn*,struct qed_sp_vport_update_params*,struct qed_iov_vf_mbx*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC12 (struct qed_hwfn*,struct qed_sp_vport_update_params*,struct qed_vf_info*,struct qed_iov_vf_mbx*,scalar_t__*) ; 
 int FUNC13 (struct qed_hwfn*,struct qed_sp_vport_update_params*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct qed_rss_params*) ; 
 struct qed_rss_params* FUNC15 (int) ; 

__attribute__((used)) static void FUNC16(struct qed_hwfn *p_hwfn,
					struct qed_ptt *p_ptt,
					struct qed_vf_info *vf)
{
	struct qed_rss_params *p_rss_params = NULL;
	struct qed_sp_vport_update_params params;
	struct qed_iov_vf_mbx *mbx = &vf->vf_mbx;
	struct qed_sge_tpa_params sge_tpa_params;
	u16 tlvs_mask = 0, tlvs_accepted = 0;
	u8 status = PFVF_STATUS_SUCCESS;
	u16 length;
	int rc;

	/* Valiate PF can send such a request */
	if (!vf->vport_instance) {
		FUNC0(p_hwfn,
			   QED_MSG_IOV,
			   "No VPORT instance available for VF[%d], failing vport update\n",
			   vf->abs_vf_id);
		status = PFVF_STATUS_FAILURE;
		goto out;
	}
	p_rss_params = FUNC15(sizeof(*p_rss_params));
	if (p_rss_params == NULL) {
		status = PFVF_STATUS_FAILURE;
		goto out;
	}

	FUNC1(&params, 0, sizeof(params));
	params.opaque_fid = vf->opaque_fid;
	params.vport_id = vf->vport_id;
	params.rss_params = NULL;

	/* Search for extended tlvs list and update values
	 * from VF in struct qed_sp_vport_update_params.
	 */
	FUNC7(p_hwfn, &params, mbx, &tlvs_mask);
	FUNC12(p_hwfn, &params, vf, mbx, &tlvs_mask);
	FUNC11(p_hwfn, &params, mbx, &tlvs_mask);
	FUNC8(p_hwfn, &params, mbx, &tlvs_mask);
	FUNC6(p_hwfn, &params, mbx, &tlvs_mask);
	FUNC5(p_hwfn, &params, mbx, &tlvs_mask);
	FUNC10(p_hwfn, vf, &params,
					&sge_tpa_params, mbx, &tlvs_mask);

	tlvs_accepted = tlvs_mask;

	/* Some of the extended TLVs need to be validated first; In that case,
	 * they can update the mask without updating the accepted [so that
	 * PF could communicate to VF it has rejected request].
	 */
	FUNC9(p_hwfn, vf, &params, p_rss_params,
				    mbx, &tlvs_mask, &tlvs_accepted);

	if (FUNC2(p_hwfn, vf->relative_vf_id,
				     &params, &tlvs_accepted)) {
		tlvs_accepted = 0;
		status = PFVF_STATUS_NOT_SUPPORTED;
		goto out;
	}

	if (!tlvs_accepted) {
		if (tlvs_mask)
			FUNC0(p_hwfn, QED_MSG_IOV,
				   "Upper-layer prevents VF vport configuration\n");
		else
			FUNC0(p_hwfn, QED_MSG_IOV,
				   "No feature tlvs found for vport update\n");
		status = PFVF_STATUS_NOT_SUPPORTED;
		goto out;
	}

	rc = FUNC13(p_hwfn, &params, QED_SPQ_MODE_EBLOCK, NULL);

	if (rc)
		status = PFVF_STATUS_FAILURE;

out:
	FUNC14(p_rss_params);
	length = FUNC3(p_hwfn, vf, mbx, status,
						  tlvs_mask, tlvs_accepted);
	FUNC4(p_hwfn, p_ptt, vf, length, status);
}