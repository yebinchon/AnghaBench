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
struct TYPE_4__ {int /*<<< orphan*/ * data; } ;
struct core_rx_slow_path_cqe {scalar_t__ ramrod_cmd_id; TYPE_2__ opaque_data; } ;
union core_rx_cqe_union {struct core_rx_slow_path_cqe rx_cqe_sp; } ;
struct qed_ll2_rx_queue {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  cookie; int /*<<< orphan*/  (* slowpath_cb ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct qed_ll2_info {int /*<<< orphan*/  my_id; TYPE_1__ cbs; struct qed_ll2_rx_queue rx_queue; } ;
struct qed_hwfn {int dummy; } ;

/* Variables and functions */
 scalar_t__ CORE_RAMROD_RX_QUEUE_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*,...) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct qed_hwfn *p_hwfn,
			struct qed_ll2_info *p_ll2_conn,
			union core_rx_cqe_union *p_cqe,
			unsigned long *p_lock_flags)
{
	struct qed_ll2_rx_queue *p_rx = &p_ll2_conn->rx_queue;
	struct core_rx_slow_path_cqe *sp_cqe;

	sp_cqe = &p_cqe->rx_cqe_sp;
	if (sp_cqe->ramrod_cmd_id != CORE_RAMROD_RX_QUEUE_FLUSH) {
		FUNC0(p_hwfn,
			  "LL2 - unexpected Rx CQE slowpath ramrod_cmd_id:%d\n",
			  sp_cqe->ramrod_cmd_id);
		return -EINVAL;
	}

	if (!p_ll2_conn->cbs.slowpath_cb) {
		FUNC0(p_hwfn,
			  "LL2 - received RX_QUEUE_FLUSH but no callback was provided\n");
		return -EINVAL;
	}

	FUNC3(&p_rx->lock, *p_lock_flags);

	p_ll2_conn->cbs.slowpath_cb(p_ll2_conn->cbs.cookie,
				    p_ll2_conn->my_id,
				    FUNC1(sp_cqe->opaque_data.data[0]),
				    FUNC1(sp_cqe->opaque_data.data[1]));

	FUNC2(&p_rx->lock, *p_lock_flags);

	return 0;
}