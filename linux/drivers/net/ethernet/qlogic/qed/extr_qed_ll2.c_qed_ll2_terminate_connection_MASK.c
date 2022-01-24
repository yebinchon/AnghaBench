#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct qed_ptt {int dummy; } ;
struct TYPE_7__ {scalar_t__ conn_type; } ;
struct TYPE_6__ {int b_cb_registered; int /*<<< orphan*/  rx_sb_index; } ;
struct TYPE_5__ {int b_cb_registered; int /*<<< orphan*/  tx_sb_index; } ;
struct qed_ll2_info {TYPE_3__ input; TYPE_2__ rx_queue; TYPE_1__ tx_queue; } ;
struct qed_hwfn {TYPE_4__* cdev; int /*<<< orphan*/  p_ooo_info; } ;
struct TYPE_8__ {int /*<<< orphan*/  mf_bits; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int /*<<< orphan*/  ETH_P_FCOE ; 
 int /*<<< orphan*/  ETH_P_FIP ; 
 scalar_t__ FUNC0 (struct qed_ll2_info*) ; 
 scalar_t__ FUNC1 (struct qed_ll2_info*) ; 
 scalar_t__ QED_LL2_TYPE_FCOE ; 
 scalar_t__ QED_LL2_TYPE_OOO ; 
 int /*<<< orphan*/  QED_LLH_FILTER_ETHERTYPE ; 
 int /*<<< orphan*/  QED_MF_UFP_SPECIFIC ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 
 struct qed_ll2_info* FUNC3 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 
 struct qed_ptt* FUNC8 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC9 (struct qed_hwfn*,struct qed_ptt*) ; 
 int FUNC10 (struct qed_hwfn*,struct qed_ll2_info*) ; 
 int FUNC11 (struct qed_hwfn*,struct qed_ll2_info*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC14(void *cxt, u8 connection_handle)
{
	struct qed_hwfn *p_hwfn = cxt;
	struct qed_ll2_info *p_ll2_conn = NULL;
	int rc = -EINVAL;
	struct qed_ptt *p_ptt;

	p_ptt = FUNC8(p_hwfn);
	if (!p_ptt)
		return -EAGAIN;

	p_ll2_conn = FUNC3(p_hwfn, connection_handle);
	if (!p_ll2_conn) {
		rc = -EINVAL;
		goto out;
	}

	/* Stop Tx & Rx of connection, if needed */
	if (FUNC1(p_ll2_conn)) {
		p_ll2_conn->tx_queue.b_cb_registered = false;
		FUNC12(); /* Make sure this is seen by ll2_lb_rxq_completion */
		rc = FUNC11(p_hwfn, p_ll2_conn);
		if (rc)
			goto out;

		FUNC5(p_hwfn, connection_handle);
		FUNC2(p_hwfn, p_ll2_conn->tx_queue.tx_sb_index);
	}

	if (FUNC0(p_ll2_conn)) {
		p_ll2_conn->rx_queue.b_cb_registered = false;
		FUNC12(); /* Make sure this is seen by ll2_lb_rxq_completion */
		rc = FUNC10(p_hwfn, p_ll2_conn);
		if (rc)
			goto out;

		FUNC4(p_hwfn, connection_handle);
		FUNC2(p_hwfn, p_ll2_conn->rx_queue.rx_sb_index);
	}

	if (p_ll2_conn->input.conn_type == QED_LL2_TYPE_OOO)
		FUNC7(p_hwfn, p_hwfn->p_ooo_info);

	if (p_ll2_conn->input.conn_type == QED_LL2_TYPE_FCOE) {
		if (!FUNC13(QED_MF_UFP_SPECIFIC, &p_hwfn->cdev->mf_bits))
			FUNC6(p_hwfn->cdev, 0,
						       QED_LLH_FILTER_ETHERTYPE,
						       ETH_P_FCOE, 0);
		FUNC6(p_hwfn->cdev, 0,
					       QED_LLH_FILTER_ETHERTYPE,
					       ETH_P_FIP, 0);
	}

out:
	FUNC9(p_hwfn, p_ptt);
	return rc;
}