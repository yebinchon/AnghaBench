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
struct qed_rdma_qp {int iwarp_state; int /*<<< orphan*/  icid; } ;
struct qed_hwfn {TYPE_2__* p_rdma_info; } ;
typedef  enum qed_iwarp_qp_state { ____Placeholder_qed_iwarp_qp_state } qed_iwarp_qp_state ;
struct TYPE_3__ {int /*<<< orphan*/  qp_lock; } ;
struct TYPE_4__ {TYPE_1__ iwarp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int EINVAL ; 
#define  QED_IWARP_QP_STATE_CLOSING 132 
#define  QED_IWARP_QP_STATE_ERROR 131 
#define  QED_IWARP_QP_STATE_IDLE 130 
#define  QED_IWARP_QP_STATE_RTS 129 
#define  QED_IWARP_QP_STATE_TERMINATE 128 
 int /*<<< orphan*/  QED_MSG_RDMA ; 
 int /*<<< orphan*/ * iwarp_state_names ; 
 int FUNC1 (struct qed_hwfn*,struct qed_rdma_qp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(struct qed_hwfn *p_hwfn,
		    struct qed_rdma_qp *qp,
		    enum qed_iwarp_qp_state new_state, bool internal)
{
	enum qed_iwarp_qp_state prev_iw_state;
	bool modify_fw = false;
	int rc = 0;

	/* modify QP can be called from upper-layer or as a result of async
	 * RST/FIN... therefore need to protect
	 */
	FUNC2(&p_hwfn->p_rdma_info->iwarp.qp_lock);
	prev_iw_state = qp->iwarp_state;

	if (prev_iw_state == new_state) {
		FUNC3(&p_hwfn->p_rdma_info->iwarp.qp_lock);
		return 0;
	}

	switch (prev_iw_state) {
	case QED_IWARP_QP_STATE_IDLE:
		switch (new_state) {
		case QED_IWARP_QP_STATE_RTS:
			qp->iwarp_state = QED_IWARP_QP_STATE_RTS;
			break;
		case QED_IWARP_QP_STATE_ERROR:
			qp->iwarp_state = QED_IWARP_QP_STATE_ERROR;
			if (!internal)
				modify_fw = true;
			break;
		default:
			break;
		}
		break;
	case QED_IWARP_QP_STATE_RTS:
		switch (new_state) {
		case QED_IWARP_QP_STATE_CLOSING:
			if (!internal)
				modify_fw = true;

			qp->iwarp_state = QED_IWARP_QP_STATE_CLOSING;
			break;
		case QED_IWARP_QP_STATE_ERROR:
			if (!internal)
				modify_fw = true;
			qp->iwarp_state = QED_IWARP_QP_STATE_ERROR;
			break;
		default:
			break;
		}
		break;
	case QED_IWARP_QP_STATE_ERROR:
		switch (new_state) {
		case QED_IWARP_QP_STATE_IDLE:

			qp->iwarp_state = new_state;
			break;
		case QED_IWARP_QP_STATE_CLOSING:
			/* could happen due to race... do nothing.... */
			break;
		default:
			rc = -EINVAL;
		}
		break;
	case QED_IWARP_QP_STATE_TERMINATE:
	case QED_IWARP_QP_STATE_CLOSING:
		qp->iwarp_state = new_state;
		break;
	default:
		break;
	}

	FUNC0(p_hwfn, QED_MSG_RDMA, "QP(0x%x) %s --> %s%s\n",
		   qp->icid,
		   iwarp_state_names[prev_iw_state],
		   iwarp_state_names[qp->iwarp_state],
		   internal ? "internal" : "");

	FUNC3(&p_hwfn->p_rdma_info->iwarp.qp_lock);

	if (modify_fw)
		rc = FUNC1(p_hwfn, qp);

	return rc;
}