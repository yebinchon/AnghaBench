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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct rdma_deregister_tid_ramrod_data {int /*<<< orphan*/  itid; } ;
struct TYPE_5__ {struct rdma_deregister_tid_ramrod_data rdma_deregister_tid; } ;
struct qed_spq_entry {TYPE_2__ ramrod; } ;
struct qed_sp_init_data {int /*<<< orphan*/  comp_mode; int /*<<< orphan*/  opaque_fid; } ;
struct qed_ptt {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  opaque_fid; } ;
struct qed_hwfn {TYPE_3__* p_rdma_info; TYPE_1__ hw_info; } ;
typedef  int /*<<< orphan*/  init_data ;
struct TYPE_6__ {int /*<<< orphan*/  proto; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,int /*<<< orphan*/ ,char*,...) ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  QED_MSG_RDMA ; 
 int /*<<< orphan*/  QED_SPQ_MODE_EBLOCK ; 
 int /*<<< orphan*/  RDMA_RAMROD_DEREGISTER_MR ; 
 scalar_t__ RDMA_RETURN_DEREGISTER_MR_BAD_STATE_ERR ; 
 scalar_t__ RDMA_RETURN_NIG_DRAIN_REQ ; 
 scalar_t__ RDMA_RETURN_OK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_sp_init_data*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct qed_hwfn*,struct qed_ptt*) ; 
 struct qed_ptt* FUNC5 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC6 (struct qed_hwfn*,struct qed_ptt*) ; 
 int FUNC7 (struct qed_hwfn*,struct qed_spq_entry**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct qed_sp_init_data*) ; 
 int FUNC8 (struct qed_hwfn*,struct qed_spq_entry*,scalar_t__*) ; 

__attribute__((used)) static int FUNC9(void *rdma_cxt, u32 itid)
{
	struct qed_hwfn *p_hwfn = (struct qed_hwfn *)rdma_cxt;
	struct rdma_deregister_tid_ramrod_data *p_ramrod;
	struct qed_sp_init_data init_data;
	struct qed_spq_entry *p_ent;
	struct qed_ptt *p_ptt;
	u8 fw_return_code;
	int rc;

	FUNC1(p_hwfn, QED_MSG_RDMA, "itid = %08x\n", itid);

	/* Get SPQ entry */
	FUNC3(&init_data, 0, sizeof(init_data));
	init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
	init_data.comp_mode = QED_SPQ_MODE_EBLOCK;

	rc = FUNC7(p_hwfn, &p_ent, RDMA_RAMROD_DEREGISTER_MR,
				 p_hwfn->p_rdma_info->proto, &init_data);
	if (rc) {
		FUNC1(p_hwfn, QED_MSG_RDMA, "rc = %d\n", rc);
		return rc;
	}

	p_ramrod = &p_ent->ramrod.rdma_deregister_tid;
	p_ramrod->itid = FUNC2(itid);

	rc = FUNC8(p_hwfn, p_ent, &fw_return_code);
	if (rc) {
		FUNC1(p_hwfn, QED_MSG_RDMA, "rc = %d\n", rc);
		return rc;
	}

	if (fw_return_code == RDMA_RETURN_DEREGISTER_MR_BAD_STATE_ERR) {
		FUNC0(p_hwfn, "fw_return_code = %d\n", fw_return_code);
		return -EINVAL;
	} else if (fw_return_code == RDMA_RETURN_NIG_DRAIN_REQ) {
		/* Bit indicating that the TID is in use and a nig drain is
		 * required before sending the ramrod again
		 */
		p_ptt = FUNC5(p_hwfn);
		if (!p_ptt) {
			rc = -EBUSY;
			FUNC1(p_hwfn, QED_MSG_RDMA,
				   "Failed to acquire PTT\n");
			return rc;
		}

		rc = FUNC4(p_hwfn, p_ptt);
		if (rc) {
			FUNC6(p_hwfn, p_ptt);
			FUNC1(p_hwfn, QED_MSG_RDMA,
				   "Drain failed\n");
			return rc;
		}

		FUNC6(p_hwfn, p_ptt);

		/* Resend the ramrod */
		rc = FUNC7(p_hwfn, &p_ent,
					 RDMA_RAMROD_DEREGISTER_MR,
					 p_hwfn->p_rdma_info->proto,
					 &init_data);
		if (rc) {
			FUNC1(p_hwfn, QED_MSG_RDMA,
				   "Failed to init sp-element\n");
			return rc;
		}

		rc = FUNC8(p_hwfn, p_ent, &fw_return_code);
		if (rc) {
			FUNC1(p_hwfn, QED_MSG_RDMA,
				   "Ramrod failed\n");
			return rc;
		}

		if (fw_return_code != RDMA_RETURN_OK) {
			FUNC0(p_hwfn, "fw_return_code = %d\n",
				  fw_return_code);
			return rc;
		}
	}

	FUNC1(p_hwfn, QED_MSG_RDMA, "De-registered TID, rc = %d\n", rc);
	return rc;
}