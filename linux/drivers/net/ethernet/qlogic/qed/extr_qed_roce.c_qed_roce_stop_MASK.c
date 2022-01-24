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
struct qed_hwfn {TYPE_1__* p_rdma_info; } ;
struct qed_bmap {int /*<<< orphan*/  max_count; int /*<<< orphan*/  bitmap; } ;
struct TYPE_2__ {struct qed_bmap real_cid_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*) ; 
 int /*<<< orphan*/  PROTOCOLID_ROCE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 

void FUNC4(struct qed_hwfn *p_hwfn)
{
	struct qed_bmap *rcid_map = &p_hwfn->p_rdma_info->real_cid_map;
	int wait_count = 0;

	/* when destroying a_RoCE QP the control is returned to the user after
	 * the synchronous part. The asynchronous part may take a little longer.
	 * We delay for a short while if an async destroy QP is still expected.
	 * Beyond the added delay we clear the bitmap anyway.
	 */
	while (FUNC1(rcid_map->bitmap, rcid_map->max_count)) {
		FUNC2(100);
		if (wait_count++ > 20) {
			FUNC0(p_hwfn, "cid bitmap wait timed out\n");
			break;
		}
	}
	FUNC3(p_hwfn, PROTOCOLID_ROCE);
}