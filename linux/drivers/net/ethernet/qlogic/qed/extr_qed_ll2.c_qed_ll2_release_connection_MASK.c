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
struct TYPE_4__ {int /*<<< orphan*/  rcq_chain; int /*<<< orphan*/  rxq_chain; int /*<<< orphan*/  descq_array; } ;
struct TYPE_3__ {int /*<<< orphan*/  txq_chain; int /*<<< orphan*/  descq_mem; } ;
struct qed_ll2_info {int b_active; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cid; TYPE_2__ rx_queue; TYPE_1__ tx_queue; } ;
struct qed_hwfn {int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 
 struct qed_ll2_info* FUNC5 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct qed_hwfn*,struct qed_ll2_info*) ; 

void FUNC7(void *cxt, u8 connection_handle)
{
	struct qed_hwfn *p_hwfn = cxt;
	struct qed_ll2_info *p_ll2_conn = NULL;

	p_ll2_conn = FUNC5(p_hwfn, connection_handle);
	if (!p_ll2_conn)
		return;

	FUNC0(p_ll2_conn->tx_queue.descq_mem);
	FUNC3(p_hwfn->cdev, &p_ll2_conn->tx_queue.txq_chain);

	FUNC0(p_ll2_conn->rx_queue.descq_array);
	FUNC3(p_hwfn->cdev, &p_ll2_conn->rx_queue.rxq_chain);
	FUNC3(p_hwfn->cdev, &p_ll2_conn->rx_queue.rcq_chain);

	FUNC4(p_hwfn, p_ll2_conn->cid);

	FUNC6(p_hwfn, p_ll2_conn);

	FUNC1(&p_ll2_conn->mutex);
	p_ll2_conn->b_active = false;
	FUNC2(&p_ll2_conn->mutex);
}